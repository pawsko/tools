package pl.coderslab.tools.status;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/status")
public class StatusController {
    private final StatusDao statusDao;

    public StatusController(StatusDao statusDao) {
        this.statusDao = statusDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("status", statusDao.findAll());
        return "status/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("statuses", statusDao.findAll());
        model.addAttribute("status", new Status());
        return "status/add";
    }

    @PostMapping("/add")
    public String save(Status status) {
        statusDao.create(status);
        return "redirect:/status/add";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("status", statusDao.read(id));
        return "status/edit";
    }

    @PostMapping("/edit")
    public String update(Status status) {
        statusDao.update(status);
        return "redirect:/status/list";
    }
}
