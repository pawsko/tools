package pl.coderslab.tools.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class IdToUserConverter implements Converter<String, User> {

    @Autowired
    private UserDao userDao;

    @Override
    public User convert(String source){
        return userDao.read(Long.parseLong(source));
    }
}
