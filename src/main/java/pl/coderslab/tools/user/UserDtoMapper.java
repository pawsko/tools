package pl.coderslab.tools.user;

import org.springframework.stereotype.Service;

@Service
public class UserDtoMapper {
    public UserDto map(User user) {
        UserDto dto = new UserDto();
        dto.setFirstName(user.getFirstName());
        dto.setLastName(user.getLastName());
        dto.setEmail(user.getEmail());
        dto.setPhoneNumber(user.getPhoneNumber());
        return dto;
    }
}
