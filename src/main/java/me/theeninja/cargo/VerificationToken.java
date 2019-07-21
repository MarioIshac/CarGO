package me.theeninja.cargo;

import lombok.Data;
import me.theeninja.cargo.account.Account;

import javax.persistence.*;
import java.time.Instant;

@Entity
@Data
public class VerificationToken {
    private static final int EXPIRATION = 60 * 24;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String tokenString;

    @OneToOne(targetEntity = Account.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false, name = "user_id")
    private Account account;

    private Instant verificationRequestInstant;
}
