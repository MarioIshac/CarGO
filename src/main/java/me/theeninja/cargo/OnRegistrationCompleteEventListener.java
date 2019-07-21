package me.theeninja.cargo;

import lombok.Getter;
import lombok.val;
import me.theeninja.cargo.account.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Getter
@Component
public class OnRegistrationCompleteEventListener implements ApplicationListener<OnRegistrationCompleteEvent> {
    private final AccountService accountService;
    private final JavaMailSender javaMailSender;

    @Autowired
    public OnRegistrationCompleteEventListener(AccountService accountService, JavaMailSender javaMailSender) {
        this.accountService = accountService;
        this.javaMailSender = javaMailSender;
    }

    private static final String VERIFICATION_TOKEN_SUBJECT = "CarGO Registration Confirmation";

    @Override
    public void onApplicationEvent(final OnRegistrationCompleteEvent onRegistrationCompleteEvent) {
        val account = onRegistrationCompleteEvent.getAccount();
        val verificationTokenString = UUID.randomUUID().toString();

        getAccountService().newVerificationToken(account, verificationTokenString);

        val configmrationURL = onRegistrationCompleteEvent.getAppURL() + "verify?token=" + verificationTokenString;

        val recipientEmailAddress = account.getEmailAddress();

        val recipientEmailMessage = new SimpleMailMessage();

        recipientEmailMessage.setTo(recipientEmailAddress);
        recipientEmailMessage.setSubject(VERIFICATION_TOKEN_SUBJECT);
        recipientEmailMessage.setText(configmrationURL);

        getJavaMailSender().send(recipientEmailMessage);
    }
}
