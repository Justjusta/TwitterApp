package pl.twitter.controller;

import pl.twitter.model.Comment;
import pl.twitter.repository.CommentRepository;
import pl.twitter.repository.TweetRepository;
import pl.twitter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.security.Principal;
import java.time.LocalDateTime;

@Controller
public class CommentController {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    TweetRepository tweetRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/comment/add/{tweet_id}", method = RequestMethod.GET)
    public String addCommentGet(Model model) {
        model.addAttribute("comment", new Comment());
        return "views/addComment";
    }

    @RequestMapping(value = "/comment/add/{tweet_id}", method = RequestMethod.POST)
    public String addCommentPost(@Valid @ModelAttribute Comment comment, BindingResult result, @PathVariable Long tweet_id, Principal principal) {
        if (result.hasErrors()) {
            return "views/addComment";
        } else {
            comment.setUser(userRepository.findByUsername(principal.getName()));
            comment.setCreated(LocalDateTime.now());
            comment.setTweet(tweetRepository.findOneById(tweet_id));
            commentRepository.save(comment);
            return "redirect:/";
        }
    }
}
