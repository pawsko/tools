package pl.coderslab.tools.rental;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;
import pl.coderslab.tools.status.Status;
import pl.coderslab.tools.tool.Tool;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
@Slf4j
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

    public Rental readRentalByToolId(Long toolId) {
        log.info("log from change Status");
        Query queryp = entityManager.createQuery("SELECT r FROM Rental r WHERE (r.tool.id = :toolId AND r.returned IS NULL)");
        queryp.setParameter("toolId", toolId);
       return (Rental) queryp.getSingleResult();
    }


}
