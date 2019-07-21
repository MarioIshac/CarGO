package me.theeninja.cargo.account;

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
public class AccountService implements UserDetailsService {
    private final AccountRepository accountRepository;
    private final VerificationTokenRepository verificationTokenRepository;

    @Autowired
    public AccountService(AccountRepository accountRepository, VerificationTokenRepository verificationTokenRepository) {
        this.accountRepository = accountRepository;
        this.verificationTokenRepository = verificationTokenRepository;
    }

    public Account registerUserAccount(final AccountSignUpInformation accountSignUpInformation) throws AccountCredentialExistsException {
        val emailAddress = accountSignUpInformation.getEmailAddress();

        if (getAccountRepository().findAccountByEmailAddress(emailAddress).isPresent()) {
            throw new EmailExistsException(String.format("The email %s is already registered.", emailAddress));
        }

        val socialSecurityNumber = accountSignUpInformation.getSocialSecurityNumber();
        val hashedSocialSecurityNumber = socialSecurityNumber;

        if (getAccountRepository().findAccountByHashedSocialSecurityNumber(hashedSocialSecurityNumber).isPresent()) {
            throw new SocialSecurityNumberExistsException(String.format("The social security number %s is already registered.", socialSecurityNumber));
        }

        val phoneNumber = accountSignUpInformation.getPhoneNumber();

        if (getAccountRepository().findAccountByPhoneNumber(phoneNumber).isPresent()) {
            throw new PhoneNumberExistsException(String.format("The phone number %s is already registered.", phoneNumber));
        }

        val account = new Account();

        account.getAccountRoles().addAll(accountSignUpInformation.getAccountRoles());
        account.setFirstName(accountSignUpInformation.getFirstName());
        account.setLastName(accountSignUpInformation.getLastName());
        account.setEmailAddress(accountSignUpInformation.getEmailAddress());
        account.setDriversLicenseImage(accountSignUpInformation.getDriversLicenseImage());
        account.setHashedPassword(account.getHashedPassword());
        account.setInsuranceCardImage(account.getInsuranceCardImage());
        account.setHashedSocialSecurityNumber(account.getHashedSocialSecurityNumber());

        return getAccountRepository().save(account);
    }

    @Override
    public UserDetails loadUserByUsername(final String emailAddress) throws UsernameNotFoundException {
        return getAccountRepository().findAccountByEmailAddress(emailAddress)
                                     .orElseThrow(() -> new UsernameNotFoundException(String.format("The email address %s is not registered.", emailAddress)));
    }

    public VerificationToken newVerificationToken(final Account account, final String verificationTokenString) {
        val verificationToken = new VerificationToken();
        verificationToken.setAccount(account);
        verificationToken.setTokenString(verificationTokenString);

        return getVerificationTokenRepository().save(verificationToken);
    }

    public VerificationToken getVerificationToken(final String verificationTokenString) throws VerificationTokenNotFoundException {
        Optional<VerificationToken> verificationToken = getVerificationTokenRepository().findByTokenString(verificationTokenString);

        return verificationToken.orElseThrow(() -> new VerificationTokenNotFoundException(String.format("The verification token %s does not exist.", verificationTokenString)));
    }

    public void verifyAccount(final Account account) {
        account.setEnabled(true);
    }
}
