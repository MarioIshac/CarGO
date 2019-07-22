package me.theeninja.cargo.account;

import lombok.Getter;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Getter
public class AccountSignUpInformation {
    @NotNull
    @NotEmpty
    private String firstName;

    @NotNull
    @NotEmpty
    private String lastName;

    @NotNull
    @NotEmpty
    private String emailAddress;

    @NotNull
    @NotEmpty
    private String password;

    @NotNull
    @NotEmpty
    private String confirmedPassword;

    @NotNull
    private byte[] driversLicenseImage;

    @NotNull
    @NotEmpty
    private Set<CarUserRole> carUserRoles;

    @NotNull
    @NotEmpty
    private String phoneNumber;

    @NotNull
    @NotEmpty
    private String socialSecurityNumber;
}
