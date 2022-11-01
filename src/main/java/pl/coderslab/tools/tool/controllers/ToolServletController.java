package pl.coderslab.tools.tool.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.LocationRepository;
import pl.coderslab.tools.manufacturer.ManufacturerRepository;
import pl.coderslab.tools.powertype.PowerTypeRepository;
import pl.coderslab.tools.status.StatusRepository;
import pl.coderslab.tools.category.CategoryRepository;
import pl.coderslab.tools.tool.Tool;
import pl.coderslab.tools.tool.ToolDao;

@Controller
@RequestMapping("/tool")
public class ToolServletController {
    private final ToolDao toolDao;
    private final ManufacturerRepository manufacturerRepository;
    private final LocationRepository locationRepository;
    private final StatusRepository statusRepository;
    private final CategoryRepository categoryRepository;
    private final PowerTypeRepository powerTypeRepository;

    public ToolServletController(ToolDao toolDao, ManufacturerRepository manufacturerRepository, LocationRepository locationRepository, StatusRepository statusRepository, CategoryRepository categoryRepository, PowerTypeRepository powerTypeRepository) {
        this.toolDao = toolDao;
        this.manufacturerRepository = manufacturerRepository;
        this.locationRepository = locationRepository;
        this.statusRepository = statusRepository;
        this.categoryRepository = categoryRepository;
        this.powerTypeRepository = powerTypeRepository;
    }


    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("tools", toolDao.findAll());
        return "tool/list";
    }

    @GetMapping("/add")
    public String addTool(Model model) {
        model.addAttribute("locations", locationRepository.findAll());
        model.addAttribute("manufacturers", manufacturerRepository.findAll());
        model.addAttribute("status", statusRepository.findAll());
        model.addAttribute("categories", categoryRepository.findAll());
        model.addAttribute("powertype", powerTypeRepository.findAll());
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
        model.addAttribute("locations", locationRepository.findAll());
        model.addAttribute("manufacturers", manufacturerRepository.findAll());
        model.addAttribute("status", statusRepository.findAll());
        model.addAttribute("categories", categoryRepository.findAll());
        model.addAttribute("powertype", powerTypeRepository.findAll());
        model.addAttribute("tool", toolDao.read(id));
        return "tool/edit";
    }

    @PostMapping("/edit")
    public String update(Tool tool) {
        toolDao.update(tool);
        return "redirect:/tool/list";
    }
}
