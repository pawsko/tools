package pl.coderslab.tools;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.stereotype.Service;

@Service
public class CustomInMemoryUserDetailsManager extends InMemoryUserDetailsManager {
    public CustomInMemoryUserDetailsManager() {
        User.UserBuilder userBuilder = User.builder();

        String adminPassHash = "{bcrypt}" + new BCryptPasswordEncoder().encode("pass");
        UserDetails admin = userBuilder.username("admin").password(adminPassHash).roles("ADMIN").build();

        String userPassHash = "{bcrypt}" + new BCryptPasswordEncoder().encode("user");
        UserDetails user  = userBuilder.username("user").password(userPassHash).roles("USER").build();
        createUser(admin);
        createUser(user);
    }
}
