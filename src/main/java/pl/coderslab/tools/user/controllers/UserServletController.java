package pl.coderslab.tools.user.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.rental.RentalDao;
import pl.coderslab.tools.tool.ToolDao;
import pl.coderslab.tools.user.User;
import pl.coderslab.tools.user.UserDao;

@Controller
@RequestMapping("/user")
public class UserServletController {

    private final UserDao userDao;
    private final RentalDao rentalDao;
    private final ToolDao toolDao;

    public UserServletController(UserDao userDao, RentalDao rentalDao, ToolDao toolDao) {
        this.userDao = userDao;
        this.rentalDao = rentalDao;
        this.toolDao = toolDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("users", userDao.findAll());
        return "user/list";
    }

    @GetMapping("/add")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "user/add";
    }

    @PostMapping("/add")
    public String save(User user) {
        userDao.create(user);
        return "redirect:/user/list";
    }

    @GetMapping("/edit/{id}")
    public String editUser(@PathVariable Long id, Model model) {
        model.addAttribute("user", userDao.read(id));
        return "user/edit";
    }

    @PostMapping("/edit")
    public String update(User user) {
        userDao.update(user);
        return "redirect:/user/list";
    }

    @GetMapping("/rental/{userId}")
    public String listAllToolsRentedByUser(@PathVariable Long userId, Model model) {
        model.addAttribute("user", userDao.read(userId));
        model.addAttribute("tools", toolDao.findAll());
        model.addAttribute("rentals", rentalDao.findAllRentedByUser(userId));
        return "user/rental";
    }
}
