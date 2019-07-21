package me.theeninja.cargo;

import me.theeninja.cargo.account.AccountCredentialExistsException;

public class SocialSecurityNumberExistsException extends AccountCredentialExistsException {
    public SocialSecurityNumberExistsException(String message) {
        super(message);
    }
}
