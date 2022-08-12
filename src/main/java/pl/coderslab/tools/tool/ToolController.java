package pl.coderslab.tools.tool;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.LocationDao;
import pl.coderslab.tools.manufacturer.ManufacturerDao;
import pl.coderslab.tools.powertype.PowerTypeDao;
import pl.coderslab.tools.status.StatusDao;
import pl.coderslab.tools.category.CategoryDao;

@Controller
@RequestMapping("/tool")
public class ToolController {
    private final ToolDao toolDao;
    private final ManufacturerDao manufacturerDao;
    private final LocationDao locationDao;
    private final StatusDao statusDao;
    private final CategoryDao categoryDao;
    private final PowerTypeDao powerTypeDao;


    public ToolController(ToolDao toolDao, ManufacturerDao manufacturerDao, LocationDao locationDao, StatusDao statusDao, CategoryDao categoryDao, PowerTypeDao powerTypeDao) {
        this.toolDao = toolDao;
        this.manufacturerDao = manufacturerDao;
        this.locationDao = locationDao;
        this.statusDao = statusDao;
        this.categoryDao = categoryDao;
        this.powerTypeDao = powerTypeDao;
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
        model.addAttribute("status", statusDao.findAll());
        model.addAttribute("categories", categoryDao.findAll());
        model.addAttribute("powertype", powerTypeDao.findAll());
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
        model.addAttribute("status", statusDao.findAll());
        model.addAttribute("categories", categoryDao.findAll());
        model.addAttribute("powertype", powerTypeDao.findAll());
        model.addAttribute("tool", toolDao.read(id));
        return "tool/edit";
    }

    @PostMapping("/edit")
    public String update(Tool tool) {
        toolDao.update(tool);
        return "redirect:/tool/list";
    }
}
