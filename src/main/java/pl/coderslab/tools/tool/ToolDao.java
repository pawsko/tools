package pl.coderslab.tools.tool;

import org.springframework.stereotype.Repository;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
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
}
