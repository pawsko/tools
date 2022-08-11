package pl.coderslab.tools.typesoftools;

import org.springframework.stereotype.Repository;
import pl.coderslab.tools.location.Location;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class TypesOfToolsDao {
    @PersistenceContext
    EntityManager entityManager;

    public List<TypesOfTools> findAll() {
        return entityManager
                .createQuery("select t from TypesOfTools t")
                .getResultList();
    }

    public void create(TypesOfTools typesOfTools) {
        entityManager.persist(typesOfTools);
    }

    public TypesOfTools read(long id) {
        return entityManager.find(TypesOfTools.class, id);
    }

    public void update(TypesOfTools typesOfTools) {
        entityManager.merge(typesOfTools);
    }
}
