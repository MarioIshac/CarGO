package me.theeninja.cargo.account;

import lombok.val;
import me.theeninja.cargo.VerificationToken;

import javax.persistence.Entity;
import java.time.Instant;
import java.time.temporal.ChronoUnit;

@Entity
public class UserVerificationToken extends VerificationToken<Account> {
    @Override
    public boolean isExpired() {
        val currentInstant = Instant.now();
        val instantOfExpiration = getVerificationRequestInstant().plus(1, ChronoUnit.DAYS);

        return currentInstant.isBefore(instantOfExpiration);
    }
}
