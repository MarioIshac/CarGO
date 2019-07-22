package me.theeninja.cargo.account;

import lombok.Data;
import lombok.val;

import java.util.Optional;
import java.util.function.Function;

public class UserCredentialsDisambiguator<U extends User> {
    @FunctionalInterface
    private interface CarGOUserCredentialGetter<U extends User, C> {
        C getCredential(U carGOUser);
    }

    @FunctionalInterface
    private interface UserCredentialFilterer<U extends User, C> {
        Optional<U> findUser(C credential);
    }

    @Data
    private class UserCredentialDisambiguator<C> {
        private final CarGOUserCredentialGetter<U, C> carGOUserCredentialGetter;
        private final UserCredentialFilterer<U, C> userCredentialFilterer;
        private final Function<String, UserCredentialExistsException> userCredentialExistsExceptionConstructor;
        private final String credentialRepresentation;

        public void forceDisambiguity(final U user) throws UserCredentialExistsException {
            val credential = getCarGOUserCredentialGetter().getCredential(user);
            val userWithCredential = this.getUserCredentialFilterer().findUser(credential);

            if (userWithCredential.isPresent()) {
                val exceptionMessage = String.format("The %s: %s is already registered.", getCredentialRepresentation(), credential);

                throw getUserCredentialExistsExceptionConstructor().apply(exceptionMessage);
            }
        }
    }
}
