package pl.coderslab.tools.category;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class CategoryDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<Category> findAll() {
        return entityManager
                .createQuery("select c from Category c")
                .getResultList();
    }

    public void create(Category category) {
        entityManager.persist(category);
    }

    public Category read(long id) {
        return entityManager.find(Category.class, id);
    }

    public void update(Category category) {
        entityManager.merge(category);
    }
}
