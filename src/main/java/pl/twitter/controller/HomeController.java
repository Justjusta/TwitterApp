package pl.twitter.controller;

import pl.twitter.model.User;
import pl.twitter.repository.TweetRepository;
import pl.twitter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
public class HomeController {

    @Autowired
    private TweetRepository tweetRepository;

    @Autowired
    private UserRepository userRepository;

    @ModelAttribute(name = "user")
    private User getUser(Principal principal) {
        return userRepository.findByUsername(principal.getName());
    }

    @RequestMapping("/")
    public String getHome(Model model) {
        model.addAttribute("tweets", tweetRepository.findAll());
        return "views/home";
    }
}
