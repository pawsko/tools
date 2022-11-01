package pl.coderslab.tools.rental.controllers;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.rental.Rental;
import pl.coderslab.tools.rental.RentalDao;
import pl.coderslab.tools.status.StatusRepository;
import pl.coderslab.tools.tool.ToolDao;
import pl.coderslab.tools.user.User;
import pl.coderslab.tools.user.UserDao;

@Controller
@Slf4j
@RequestMapping("/rental")
public class RentalController {
    private final RentalDao rentalDao;
    private final ToolDao toolDao;
    private final UserDao userDao;
    private final StatusRepository statusDao;

    public RentalController(RentalDao rentalDao, ToolDao toolDao, UserDao userDao, StatusRepository statusDao) {
        this.rentalDao = rentalDao;
        this.toolDao = toolDao;
        this.userDao = userDao;
        this.statusDao = statusDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("rentals", rentalDao.findAll());
        log.info("model rentals: {}", model.toString());
        model.addAttribute("tools", toolDao.findAll());
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
        toolDao.changeStatus(rental.getTool().getId(), 2L);
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

    @GetMapping("/rent/{id}")
    public String rent(@PathVariable Long id, Model model) {
        model.addAttribute("users", userDao.findAll());
        model.addAttribute("tool", toolDao.read(id));
        model.addAttribute("rental", new Rental());
        log.info(model.toString());
        return "rental/rent";
    }

    @PostMapping("/rent")
    public String saveRent(Rental rental) {
        log.info("New rent received: {}", rental);

        toolDao.changeStatus(rental.getTool().getId(), 2L);
        rentalDao.create(rental);
        log.info("New rent created: {}", rental);

        return "redirect:/rental/list";
    }

    @GetMapping("/return/{id}")
    public String returned(@PathVariable Long id, Model model) {
        Rental rental = rentalDao.readRentalByToolId(id);
        model.addAttribute("rental", rental);
        User user = userDao.read(rental.getUser().getId());
        model.addAttribute("user", user);
        model.addAttribute("tool", toolDao.read(id));
        log.info("Return model: {}", model);
        return "rental/return";
    }

    @PostMapping("/return")
    public String saveReturn(Rental rental) {
        log.info("New rent received: {}", rental);

        toolDao.changeStatus(rental.getTool().getId(), 1L);

        log.info("New rent created: {}", rental);

        rentalDao.update(rental);
        return "redirect:/rental/list";
    }


}
