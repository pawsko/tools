package pl.coderslab.tools.user;

import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final UserDtoMapper userDtoMapper;

    public UserService(UserRepository userRepository, UserDtoMapper userDtoMapper) {
        this.userRepository = userRepository;
        this.userDtoMapper = userDtoMapper;
    }

    public Iterable<UserDto> getAll() {
    return StreamSupport.stream(userRepository.findAll().spliterator(), false)
            .map(userDtoMapper::map)
            .collect(Collectors.toList());
    }

    public Optional<UserDto> getById(Long id) {
        return userRepository.findById(id)
                .map(userDtoMapper::map);
    }
}
