package pl.twitter.controller;

import pl.twitter.model.Message;
import pl.twitter.model.User;
import pl.twitter.repository.MessageRepository;
import pl.twitter.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@SessionAttributes({"dateFormatter"})
public class MessageController {

    @Autowired
    private MessageRepository messageRepository;

    @Autowired
    private UserRepository userRepository;

    @ModelAttribute(name = "users")
    private List<User> getUsers(Principal principal) {
        List<User> users = userRepository.findAll();
        List<User> usersList = users.stream().filter(user -> !user.getUsername().equals(principal.getName())).collect(Collectors.toList());
        return usersList;
    }

    @RequestMapping(value = "/message/send", method = RequestMethod.GET)
    public String sendMessageGet(Model model) {
        model.addAttribute("message", new Message());
        return "views/sendMessage";
    }

    @RequestMapping(value = "/message/send", method = RequestMethod.POST)
    public String sendMessagePost(@ModelAttribute Message message, BindingResult result, Principal principal) {
        if (result.hasErrors()) {
            return "views/sendMessage";
        } else {
            message.setSender(userRepository.findByUsername(principal.getName()));
            message.setCreated(LocalDateTime.now());
            messageRepository.save(message);
            return "redirect:/user/" + principal.getName();
        }
    }

    @RequestMapping(value = "/message/received")
    public String getReceivedMessages(Model model, Principal principal) {
        User user = userRepository.findByUsername(principal.getName());
        List<Message> receivedMessages = messageRepository.findAllMessagesByReceiverId(user.getId());
        for (Message m : receivedMessages) {
            String s = m.getText().substring(0, 15) + "...";
            m.setText(s);
        }
        model.addAttribute("receivedMessages", receivedMessages);
        return "views/receivedMessages";
    }

    @RequestMapping(value = "/message/sent")
    public String getSentMessages(Model model, Principal principal) {
        User user = userRepository.findByUsername(principal.getName());
        List<Message> sentMessages = messageRepository.findAllMessagesBySenderId(user.getId());
        model.addAttribute("sentMessages", sentMessages);
        return "views/sentMessages";
    }

    @RequestMapping(value = "/message/{id}")
    public String getMessage(Model model, @PathVariable Long id, Principal principal) {
        Message message = messageRepository.findOneById(id);
        if (message.getReceiver().getUsername().equals(principal.getName())) {
            message.setStatus(false);
            messageRepository.save(message);
            model.addAttribute("message", message);
            return "views/getMessage";
        } else {
            return "redirect:/";
        }
    }

}
