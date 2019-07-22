package me.theeninja.cargo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface VerificationTokenRepository<U, V extends VerificationToken<U>> extends CrudRepository<V, Long> {
    Optional<V> findByTokenString(String tokenString);
    Optional<V> findByVerificationRequester(U account);
}
