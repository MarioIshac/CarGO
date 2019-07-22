package me.theeninja.cargo.account;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Getter
@Setter
@Entity
public class Account extends User {
    private String phoneNumber;

    private byte[] driversLicenseImage;
    private byte[] insuranceCardImage;

    @ElementCollection
    private Set<CarUserRole> carUserRoles;

    private String socialSecurityNumber;

    private boolean enabled = false;
}
