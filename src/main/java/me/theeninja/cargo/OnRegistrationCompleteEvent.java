package me.theeninja.cargo;

import lombok.Getter;
import me.theeninja.cargo.account.Account;
import org.springframework.context.ApplicationEvent;

@Getter
public class OnRegistrationCompleteEvent extends ApplicationEvent {
    private final String appURL;
    private final String locale;
    private final Account account;

    public OnRegistrationCompleteEvent(Account account, String appURL, String locale) {
        super(account);
        this.appURL = appURL;
        this.locale = locale;
        this.account = account;
    }
}
