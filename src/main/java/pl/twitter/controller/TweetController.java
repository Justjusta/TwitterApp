package pl.twitter.controller;

import pl.twitter.model.Tweet;
import pl.twitter.repository.TweetRepository;
import pl.twitter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDateTime;

@Controller
@SessionAttributes({"dateFormatter"})
public class TweetController {

    @Autowired
    TweetRepository tweetRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/tweet/add", method = RequestMethod.GET)
    public String addTweetGet(Model model) {
        model.addAttribute("tweet", new Tweet());
        return "views/addTweet";
    }

    @RequestMapping(value = "/tweet/add", method = RequestMethod.POST)
    public String addTweetPost(@Valid @ModelAttribute Tweet tweet, BindingResult result, Principal principal) {
        if (result.hasErrors()) {
            return "views/addTweet";
        } else {
            tweet.setUser(userRepository.findByUsername(principal.getName()));
            tweet.setCreated(LocalDateTime.now());
            tweetRepository.save(tweet);
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/tweet/delete/{id}")
    public String deleteTweet(@PathVariable Long id, Principal principal) {
        Tweet tweet = tweetRepository.findOneById(id);
        if (tweet.getUser().getUsername().equals(principal.getName())) {
            tweetRepository.delete(tweet);
            return "redirect:/";
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/tweet/{id}")
    public String getTweet(Model model, @PathVariable Long id) {
        model.addAttribute("tweet", tweetRepository.findOneById(id));
        return "views/getTweet";
    }

    @RequestMapping(value = "/tweet/search/")
    public String searchTweet(Model model, @RequestParam(name = "text", required = false) String text) {
        model.addAttribute("tweets", tweetRepository.findAllByTextLike(text));
        return "views/searchTweet";
    }
}


