package me.theeninja.cargo;

import lombok.Data;

import javax.persistence.*;
import java.time.Instant;

@MappedSuperclass
@Data
public abstract class VerificationToken<U> {
    private static final int EXPIRATION = 60 * 24;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String tokenString;

    @OneToOne
    @JoinColumn
    private U verificationRequester;

    private Instant verificationRequestInstant;

    public abstract boolean isExpired();
}
