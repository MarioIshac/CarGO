package me.theeninja.cargo.account;

public class EmailExistsException extends AccountCredentialExistsException {
    public EmailExistsException(String message) {
        super(message);
    }
}
