package me.theeninja.cargo.account;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface AccountRepository extends CrudRepository<Account, Long> {
    Optional<Account> findBySocialSecurityNumber(String socialSecurityNumber);
    Optional<Account> findByEmailAddress(String emailAddress);
    Optional<Account> findByPhoneNumber(String phoneNumber);
}