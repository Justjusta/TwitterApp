package pl.twitter.controller;

import pl.twitter.model.User;
import pl.twitter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/user/{username}")
    public String getUser(Model model, @PathVariable String username, Principal principal) {
        User user = userRepository.findByUsername(username);
        model.addAttribute("user", user);
        if (user.getUsername().equals(principal.getName())) {
            return "views/getCurrentUser";
        } else {
            return "views/getUser";
        }
    }
}
