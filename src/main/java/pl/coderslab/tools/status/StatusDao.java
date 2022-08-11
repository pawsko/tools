package pl.coderslab.tools.status;

import org.springframework.stereotype.Repository;
import pl.coderslab.tools.location.Location;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class StatusDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<Status> findAll() {
        return entityManager
                .createQuery("select s from Status s")
                .getResultList();
    }

    public void create(Status status) {
        entityManager.persist(status);
    }

    public Status read(long id) {
        return entityManager.find(Status.class, id);
    }

    public void update(Status status) {
        entityManager.merge(status);
    }
}
