package me.theeninja.cargo.account;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.val;
import me.theeninja.cargo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@Getter
@AllArgsConstructor(onConstructor = @__(@Autowired))
public class UserService<U extends User, V extends VerificationToken<U>> implements UserDetailsService {
    private final AccountRepository accountRepository;
    private final VerificationTokenRepository<U, V> verificationTokenRepository;
    private final UserCredentialsDisambiguator userCredentialsDisambiguator;

    public Account registerUserAccount(final AccountSignUpInformation accountSignUpInformation) throws UserCredentialExistsException {
        /* val emailAddress = accountSignUpInformation.getEmailAddress();

        if (getAccountRepository().findByEmailAddress(emailAddress).isPresent()) {
            throw new EmailExistsException(String.format("The email %s is already registered.", emailAddress));
        }

        val socialSecurityNumber = accountSignUpInformation.getSocialSecurityNumber();
        val hashedSocialSecurityNumber = socialSecurityNumber;

        if (getAccountRepository().findBySocialSecurityNumber(hashedSocialSecurityNumber).isPresent()) {
            throw new SocialSecurityNumberExistsException(String.format("The social security number %s is already registered.", socialSecurityNumber));
        }

        val phoneNumber = accountSignUpInformation.getPhoneNumber();

        if (getAccountRepository().findByPhoneNumber(phoneNumber).isPresent()) {
            throw new PhoneNumberExistsException(String.format("The phone number %s is already registered.", phoneNumber));
        }

        val account = new Account();

        account.getCarUserRoles().addAll(accountSignUpInformation.getCarUserRoles());
        account.setFirstName(accountSignUpInformation.getFirstName());
        account.setLastName(accountSignUpInformation.getLastName());
        account.setEmailAddress(accountSignUpInformation.getEmailAddress());
        account.setDriversLicenseImage(accountSignUpInformation.getDriversLicenseImage());
        account.setPassword(account.getPassword());
        account.setInsuranceCardImage(account.getInsuranceCardImage());
        account.setSocialSecurityNumber(account.getSocialSecurityNumber()); */

        return null;
    }

    @Override
    public UserDetails loadUserByUsername(final String emailAddress) throws UsernameNotFoundException {
        return getAccountRepository().findByEmailAddress(emailAddress)
                                     .orElseThrow(() -> new UsernameNotFoundException(String.format("The email address %s is not registered.", emailAddress)));
    }

    public VerificationToken<U> newVerificationToken(final User account, final String verificationTokenString) {
        /* val verificationToken = new VerificationToken();
        verificationToken.setVerificationRequester(account);
        verificationToken.setTokenString(verificationTokenString); */

        return null;
    }

    public VerificationToken<U> getVerificationToken(final String verificationTokenString) throws VerificationTokenNotFoundException {
        // Optional<VerificationToken<U>> verificationToken = getVerificationTokenRepository().findByTokenString(verificationTokenString);

        //return verificationToken.orElseThrow(() -> new VerificationTokenNotFoundException(String.format("The verification token %s does not exist.", verificationTokenString)));
        return null;
    }

    public void verifyUser(final U user) {
        user.setEnabled(true);
    }
}
