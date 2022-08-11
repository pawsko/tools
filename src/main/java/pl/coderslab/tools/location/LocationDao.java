package pl.coderslab.tools.location;

import org.springframework.stereotype.Repository;
import pl.coderslab.tools.tool.Tool;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class LocationDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<Location> findAll() {
        return entityManager
                .createQuery("select l from Location l")
                .getResultList();
    }

    public void create(Location location) {
        entityManager.persist(location);
    }

    public Location read(long id) {
        return entityManager.find(Location.class, id);
    }

    public void update(Location location) {
        entityManager.merge(location);
    }
}
