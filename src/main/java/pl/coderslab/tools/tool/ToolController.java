package pl.coderslab.tools.tool;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.LocationDao;
import pl.coderslab.tools.manufacturer.ManufacturerDao;

@Controller
@RequestMapping("/tool")
public class ToolController {
    private final ToolDao toolDao;
    private final ManufacturerDao manufacturerDao;
    private final LocationDao locationDao;

    public ToolController(ToolDao toolDao, ManufacturerDao manufacturerDao, LocationDao locationDao) {
        this.toolDao = toolDao;
        this.manufacturerDao = manufacturerDao;
        this.locationDao = locationDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("tools", toolDao.findAll());
        return "tool/list";
    }

    @GetMapping("/add")
    public String addTool(Model model) {
        model.addAttribute("locations", locationDao.findAll());
        model.addAttribute("manufacturers", manufacturerDao.findAll());
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
        model.addAttribute("locations", locationDao.findAll());
        model.addAttribute("manufacturers", manufacturerDao.findAll());
        model.addAttribute("tool", toolDao.read(id));
        return "tool/edit";
    }

    @PostMapping("/edit")
    public String update(Tool tool) {
        toolDao.update(tool);
        return "redirect:/tool/list";
    }
}
