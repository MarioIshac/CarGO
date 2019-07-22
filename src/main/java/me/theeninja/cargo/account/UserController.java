package me.theeninja.cargo.account;

import lombok.Getter;
import lombok.val;
import me.theeninja.cargo.VerificationToken;
import me.theeninja.cargo.VerificationTokenNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;
import java.time.temporal.ChronoUnit;

@Getter
public class UserController<U extends User, V extends VerificationToken<U>> {
    private final UserService<U, V> userService;

    @Autowired
    public UserController(UserService<U, V> userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public void attemptAccountRegistration(final @ModelAttribute("accountSignUpInformation") AccountSignUpInformation accountSignUpInformation) {
        try {
            getUserService().registerUserAccount(accountSignUpInformation);
        } catch (UserCredentialExistsException e) {
            e.printStackTrace();
        }
    }

    @PostMapping("/verify")
    public void attemptAccountVerification(final @RequestParam("tokenString") String verificationTokenString) {
        try {
            val verificationToken = this.getUserService().getVerificationToken(verificationTokenString);

            val user = verificationToken.getVerificationRequester();

            val currentInstant = Instant.now();
            val expiryInstant = verificationToken.getVerificationRequestInstant().plus(1, ChronoUnit.DAYS);

            if (expiryInstant.isBefore(currentInstant)) {
                System.out.println("EXPIRED"); // TODO Finish
            }

            getUserService().verifyUser(user);
        } catch (VerificationTokenNotFoundException e) {
            e.printStackTrace();
        }
    }
}
