package pl.coderslab.tools.typesoftools;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.Location;
import pl.coderslab.tools.location.LocationDao;

@Controller
@RequestMapping("/typeoftool")
public class TypesOfToolsController {
    private final TypesOfToolsDao typesOfToolsDao;

    public TypesOfToolsController(TypesOfToolsDao typesOfToolsDao) {
        this.typesOfToolsDao = typesOfToolsDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("typesoftools", typesOfToolsDao.findAll());
        return "typeoftool/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("typeoftool", new TypesOfTools());
        return "typeoftool/add";
    }

    @PostMapping("/add")
    public String save(TypesOfTools typesOfTools) {
        typesOfToolsDao.create(typesOfTools);
        return "redirect:/typeoftool/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("typeoftool", typesOfToolsDao.read(id));
        return "typeoftool/edit";
    }

    @PostMapping("/edit")
    public String update(TypesOfTools typesOfTools) {
        typesOfToolsDao.update(typesOfTools);
        return "redirect:/typeoftool/list";
    }
}
