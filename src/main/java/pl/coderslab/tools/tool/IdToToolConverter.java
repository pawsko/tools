package pl.coderslab.tools.tool;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class IdToToolConverter implements Converter<String, Tool> {

    @Autowired
    private ToolDao toolDao;

    @Override
    public Tool convert(String source){
        return toolDao.read(Long.parseLong(source));
    }
}
