package me.theeninja.cargo;

import me.theeninja.cargo.account.UserCredentialExistsException;

public class SocialSecurityNumberExistsException extends UserCredentialExistsException {
    public SocialSecurityNumberExistsException(String message) {
        super(message);
    }
}
