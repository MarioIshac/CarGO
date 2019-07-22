package me.theeninja.cargo;

import me.theeninja.cargo.account.UserCredentialExistsException;

public class PhoneNumberExistsException extends UserCredentialExistsException {
    public PhoneNumberExistsException(String message) {
        super(message);
    }
}
