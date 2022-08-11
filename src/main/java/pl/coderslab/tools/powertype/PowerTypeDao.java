package pl.coderslab.tools.powertype;

import org.springframework.stereotype.Repository;
import pl.coderslab.tools.location.Location;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class PowerTypeDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<PowerType> findAll() {
        return entityManager
                .createQuery("select p from PowerType p")
                .getResultList();
    }

    public void create(PowerType powerType) {
        entityManager.persist(powerType);
    }

    public PowerType read(long id) {
        return entityManager.find(PowerType.class, id);
    }

    public void update(PowerType powerType) {
        entityManager.merge(powerType);
    }
}
