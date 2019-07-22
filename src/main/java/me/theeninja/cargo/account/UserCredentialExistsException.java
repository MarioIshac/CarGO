package me.theeninja.cargo.account;

public class UserCredentialExistsException extends Exception {
    public UserCredentialExistsException(String message) {
        super(message);
    }
}
