package pl.coderslab.tools.category.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.category.Category;
import pl.coderslab.tools.category.CategoryRepository;

@Controller
@RequestMapping("/category")
public class CategoryServletController {
    private final CategoryRepository categoryRepository;

    public CategoryServletController(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("categories", categoryRepository.findAll());
        return "category/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("categories", categoryRepository.findAll());
        model.addAttribute("category", new Category());
        return "category/add";
    }

    @PostMapping("/add")
    public String save(Category category) {
        categoryRepository.save(category);
        return "redirect:/category/add";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("category", categoryRepository.findById(id));
        return "category/edit";
    }

    @PostMapping("/edit")
    public String update(Category category) {
        categoryRepository.save(category);
        return "redirect:/category/add";
    }
}
