package me.theeninja.cargo.account.verifier;

import me.theeninja.cargo.VerificationToken;

import javax.persistence.Entity;

@Entity
public class VerifierVerificationToken extends VerificationToken<Verifier> {
    @Override
    public boolean isExpired() {
        return false;
    }
}
