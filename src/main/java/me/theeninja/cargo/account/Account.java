package me.theeninja.cargo.account;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Data
@Entity
public class Account implements UserDetails {
    @Id
    @GeneratedValue
    private Long id;

    private String firstName;
    private String lastName;

    private String hashedPassword;

    private String phoneNumber;

    private byte[] driversLicenseImage;

    private byte[] insuranceCardImage;

    @ElementCollection
    private Set<AccountRole> accountRoles;

    private String hashedSocialSecurityNumber;
    private String emailAddress;

    @ElementCollection
    private Collection<GrantedAuthority> authorities;

    private boolean enabled = false;

    @Override
    public String getPassword() {
        return getHashedPassword();
    }

    @Override
    public String getUsername() {
        return getEmailAddress();
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }
}
