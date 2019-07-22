package me.theeninja.cargo.account;

public class EmailExistsException extends UserCredentialExistsException {
    public EmailExistsException(String message) {
        super(message);
    }
}
