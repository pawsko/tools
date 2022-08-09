package pl.coderslab.tools.rental;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.tools.tool.ToolDao;
import pl.coderslab.tools.user.UserDao;

@Controller
@RequestMapping("/rental")
public class RentalController {
    private final RentalDao rentalDao;
    private final ToolDao toolDao;
private final UserDao userDao;

    public RentalController(RentalDao rentalDao, ToolDao toolDao, UserDao userDao) {
        this.rentalDao = rentalDao;
        this.toolDao = toolDao;
        this.userDao = userDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("rentals", rentalDao.findAll());
        return "rental/list";
    }

    @GetMapping("/add")
    public String addRental(Model model) {
        model.addAttribute("tools", toolDao.findAll());
        model.addAttribute("users", userDao.findAll());
        model.addAttribute("rental", new Rental());
        return "rental/add";
    }

    @PostMapping("/add")
    public String save(Rental rental) {
        rentalDao.create(rental);
        return "redirect:/rental/list";
    }

    @GetMapping("/edit/{id}")
    public String editRental(@PathVariable Long id, Model model) {
        model.addAttribute("tools", toolDao.findAll());
        model.addAttribute("users", userDao.findAll());
        model.addAttribute("rental", rentalDao.read(id));
        return "rental/edit";
    }

    @PostMapping("/edit")
    public String update(Rental rental) {
        rentalDao.update(rental);
        return "redirect:/rental/list";
    }
}
