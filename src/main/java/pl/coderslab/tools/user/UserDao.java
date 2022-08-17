package pl.coderslab.tools.user;

import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class UserDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<User> findAll() {
        return entityManager
                .createQuery("select u from User u ORDER BY u.lastName")
                .getResultList();
    }

    public void create(User user) {
        entityManager.persist(user);
    }

    public User read(long id) {
        return entityManager.find(User.class, id);
    }

    public void update(User user) {
        entityManager.merge(user);
    }
}
