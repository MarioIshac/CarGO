package me.theeninja.cargo.account;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface AccountRepository extends CrudRepository<Account, Long> {
    Optional<Account> findAccountByHashedSocialSecurityNumber(String hashedSocialSecurityNumber);
    Optional<Account> findAccountByEmailAddress(String emailAddress);
    Optional<Account> findAccountByPhoneNumber(String phoneNumber);
}