package pl.coderslab.tools.tool;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;
import pl.coderslab.tools.status.Status;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
@Slf4j
public class ToolDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<Tool> findAll() {
        return entityManager
                .createQuery("select t from Tool t")
                .getResultList();
    }

    public void create(Tool tool) {
        entityManager.persist(tool);
    }

    public Tool read(long id) {
        return entityManager.find(Tool.class, id);
    }

    public void update(Tool tool) {
        entityManager.merge(tool);
    }

    public void changeStatus (Long toolId, Long statusId) {
        log.info("log from change Status");
    String query = "UPDATE Tool t SET t.status = :status WHERE t.id = :toolId";
        Status status = new Status();
                status.setId(statusId);
    entityManager.createQuery(query)
            .setParameter("status", status)
            .setParameter("toolId", toolId)
            .executeUpdate();
    }

}
