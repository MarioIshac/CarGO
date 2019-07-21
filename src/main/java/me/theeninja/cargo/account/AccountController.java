package me.theeninja.cargo.account;

import lombok.Getter;
import lombok.val;
import me.theeninja.cargo.VerificationTokenNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;
import java.time.temporal.ChronoUnit;

@RestController
@Getter
public class AccountController {
    private final AccountService accountService;

    @Autowired
    public AccountController(AccountService accountService) {
        this.accountService = accountService;
    }

    @PostMapping("/register")
    public void attemptAccountRegistration(final @ModelAttribute("accountSignUpInformation") AccountSignUpInformation accountSignUpInformation) {
        try {
            getAccountService().registerUserAccount(accountSignUpInformation);
        } catch (AccountCredentialExistsException e) {
            e.printStackTrace();
        }
    }

    @PostMapping("/verify")
    public void attemptAccountVerification(final @RequestParam("tokenString") String verificationTokenString) {
        try {
            val verificationToken = getAccountService().getVerificationToken(verificationTokenString);

            val account = verificationToken.getAccount();

            val currentInstant = Instant.now();
            val expiryInstant = verificationToken.getVerificationRequestInstant().plus(1, ChronoUnit.DAYS);

            if (expiryInstant.isBefore(currentInstant)) {
                System.out.println("EXPIRED"); // TODO Finish
            }

            getAccountService().verifyAccount(account);
        } catch (VerificationTokenNotFoundException e) {
            e.printStackTrace();
        }
    }
}
