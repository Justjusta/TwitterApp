package pl.twitter.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @NotBlank
    @Column(name = "username", unique = true)
    private String username;

    @NotBlank
    @Column(name = "password")
    private String password;

    @Email
    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "enabled")
    private Boolean enabled;

    @OneToMany(mappedBy = "user")
    private List<Tweet> tweets;

    @OneToMany(mappedBy = "sender", cascade = CascadeType.ALL)
    private List<Message> senderMessageList;

    @OneToMany(mappedBy = "receiver", cascade = CascadeType.ALL)
    private List<Message> receiverMessageList;

    @PrePersist
    private void prePersist() {
        if (enabled == null) {
            enabled = true;
        }
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public List<Tweet> getTweets() {
        return tweets;
    }

    public void setTweets(List<Tweet> tweets) {
        this.tweets = tweets;
    }

    public List<Message> getSenderMessageList() {
        return senderMessageList;
    }

    public void setSenderMessageList(List<Message> senderMessageList) {
        this.senderMessageList = senderMessageList;
    }

    public List<Message> getReceiverMessageList() {
        return receiverMessageList;
    }

    public void setReceiverMessageList(List<Message> receiverMessageList) {
        this.receiverMessageList = receiverMessageList;
    }

}
