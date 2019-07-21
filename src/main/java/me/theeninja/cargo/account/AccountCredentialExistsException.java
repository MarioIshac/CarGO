package me.theeninja.cargo.account;

public class AccountCredentialExistsException extends Exception {
    public AccountCredentialExistsException(String message) {
        super(message);
    }
}
