package pl.coderslab.tools.tool;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tool")
public class ToolController {
    private final ToolDao toolDao;

    public ToolController(ToolDao toolDao) {
        this.toolDao = toolDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("tools", toolDao.findAll());
        return "tool/list";
    }

    @GetMapping("/add")
    public String addTool(Model model) {
        model.addAttribute("tool", new Tool());
        return "tool/add";
    }

    @PostMapping("/add")
    public String save(Tool tool) {
        toolDao.create(tool);
        return "redirect:/tool/list";
    }

    @GetMapping("/edit/{id}")
    public String editTool(@PathVariable Long id, Model model) {
        model.addAttribute("tool", toolDao.read(id));
        return "tool/edit";
    }

    @PostMapping("/edit")
    public String update(Tool tool) {
        toolDao.update(tool);
        return "redirect:/tool/list";
    }
}
