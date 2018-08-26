package pl.twitter.repository;

import pl.twitter.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public interface MessageRepository extends JpaRepository<Message, Long> {

    @Query("SELECT m FROM Message m WHERE m.receiver.id = ?1 ORDER BY m.created DESC")
    public List<Message> findAllMessagesByReceiverId(Long id);

    @Query("SELECT m FROM Message m WHERE m.sender.id = ?1 ORDER BY m.created DESC")
    public List<Message> findAllMessagesBySenderId(Long id);

    public Message findOneById(Long id);


}