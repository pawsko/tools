package pl.coderslab.tools;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/login-form")
    String loginForm() {
        return "/login-form";
    }
}
