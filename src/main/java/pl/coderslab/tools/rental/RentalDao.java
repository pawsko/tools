package pl.coderslab.tools.rental;

import org.springframework.stereotype.Repository;
import pl.coderslab.tools.tool.Tool;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class RentalDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<Tool> findAll() {
        return entityManager
                .createQuery("select r from Rental r")
                .getResultList();
    }

    public void create(Rental rental) {
        entityManager.persist(rental);
    }

    public Rental read(long id) {
        return entityManager.find(Rental.class, id);
    }

    public void update(Rental rental) {
        entityManager.merge(rental);
    }
}
