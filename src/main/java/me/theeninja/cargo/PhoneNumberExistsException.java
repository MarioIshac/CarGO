package me.theeninja.cargo;

import me.theeninja.cargo.account.AccountCredentialExistsException;

public class PhoneNumberExistsException extends AccountCredentialExistsException {
    public PhoneNumberExistsException(String message) {
        super(message);
    }
}
