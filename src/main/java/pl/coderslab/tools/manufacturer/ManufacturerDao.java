package pl.coderslab.tools.manufacturer;

import org.springframework.stereotype.Repository;
import pl.coderslab.tools.tool.Tool;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ManufacturerDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<Manufacturer> findAll() {
        return entityManager
                .createQuery("select m from Manufacturer m")
                .getResultList();
    }

    public void create(Manufacturer manufacturer) {
        entityManager.persist(manufacturer);
    }

    public Manufacturer read(long id) {
        return entityManager.find(Manufacturer.class, id);
    }

    public void update(Manufacturer manufacturer) {
        entityManager.merge(manufacturer);
    }
}
