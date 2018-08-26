package pl.twitter.repository;

import pl.twitter.model.Tweet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public interface TweetRepository extends JpaRepository<Tweet, Long> {

    @Query("SELECT t FROM Tweet t ORDER BY t.created DESC")
    public List<Tweet> findAll();

    @Query("SELECT t FROM Tweet t WHERE t.text LIKE %?1% ORDER BY t.created DESC")
    public List<Tweet> findAllByTextLike(String text);

    public Tweet findOneById(Long id);
    public List<Tweet> findAllByUserUsername(String username);
    public List<Tweet> findAllByUserId(Long id);
    
}
