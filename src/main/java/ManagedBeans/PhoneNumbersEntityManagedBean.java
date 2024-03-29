package ManagedBeans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import entities.PhoneNumbersEntity;

public class PhoneNumbersEntityManagedBean implements Serializable {
    final public static String SELECT_ALL_ENTITIES_SQL = "SELECT o FROM PhoneNumbersEntity AS o";

    private PhoneNumbersEntity myEntity;

    private EntityManagerFactory myEntityManagerFactory;

    private ListDataModel myList;
    private ListDataModel myReferencesEntities; // M-N and M-1 references

    public PhoneNumbersEntityManagedBean() {
        myEntityManagerFactory = Persistence.createEntityManagerFactory("NewPersistenceUnit");
    }

    private EntityManagerFactory getEntityManagerFactory() {
        return myEntityManagerFactory;
    }

    public PhoneNumbersEntity getEntity() {
        return myEntity;
    }

    public void setEntity(PhoneNumbersEntity entity) {
        myEntity = entity;
    }

    // add new PhoneNumbersEntity
    public String create() {
        EntityManager entityManager = getEntityManagerFactory().createEntityManager();
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(getEntity());
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            try {
                entityManager.getTransaction().rollback();
            } catch (Exception e) {
            }
        }
        entityManager.close();

        return "phoneNumbersEntityList";
    }

    // save edited PhoneNumbersEntity
    public String save() {
        EntityManager entityManager = getEntityManagerFactory().createEntityManager();
        try {
            entityManager.getTransaction().begin();
            myEntity = entityManager.merge(getEntity());
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            try {
                entityManager.getTransaction().rollback();
            } catch (Exception e) {
            }
        }
        entityManager.close();
        return "phoneNumbersEntityList";
    }

    // delete PhoneNumbersEntity
    public String delete() {
        EntityManager entityManager = getEntityManagerFactory().createEntityManager();
        try {
            entityManager.getTransaction().begin();
            PhoneNumbersEntity entity = getCurrentEntity();
            entity = entityManager.merge(entity);
            entityManager.remove(entity);
            entityManager.getTransaction().commit();
        } catch (Exception ex) {
            try {
                entityManager.getTransaction().rollback();
            } catch (Exception e) {
            }
        }
        entityManager.close();

        return "phoneNumbersEntityList";
    }

    public DataModel getReferencedEntities() {
        return myReferencesEntities;
    }

    public void setReferencedEntities(Collection<PhoneNumbersEntity> entities) {
        myReferencesEntities = new ListDataModel(new ArrayList<PhoneNumbersEntity>(entities));
    }

    public String startCreate() {
        myEntity = new PhoneNumbersEntity();
        return "createPhoneNumbersEntity";
    }

    public String startView() {
        setEntityFromRequestParam();
        return "viewPhoneNumbersEntity";
    }

    public String startEdit() {
        setEntityFromRequestParam();
        return "editPhoneNumbersEntity";
    }

    public PhoneNumbersEntity getCurrentEntity() {
        PhoneNumbersEntity entity = getEntityFromRequestParam();

        return entity == null ? myEntity : entity;
    }

    public PhoneNumbersEntity getEntityFromRequestParam() {
        if (myList == null) return null;

        EntityManager entityManager = getEntityManagerFactory().createEntityManager();
        PhoneNumbersEntity entity = (PhoneNumbersEntity) myList.getRowData();
        entity = entityManager.merge(entity);
        entityManager.close();

        return entity;
    }

    public void setEntityFromRequestParam() {
        myEntity = getCurrentEntity();
    }

    public PhoneNumbersEntity findEntity(int id) {
        EntityManager entityManager = getEntityManagerFactory().createEntityManager();

        PhoneNumbersEntity entity = entityManager.find(PhoneNumbersEntity.class, id);

        entityManager.close();

        return entity;
    }

    public DataModel getAllEntities() {
        myList = new ListDataModel(getEntities());

        return myList;
    }

    public SelectItem[] getAllEntitiesAsSelectedItems() {
        List<PhoneNumbersEntity> entities = getEntities();
        SelectItem selectItems[] = new SelectItem[entities.size()];
        int i = 0;
        for (PhoneNumbersEntity entity : entities) {
            selectItems[i++] = new SelectItem(entity);
        }
        return selectItems;
    }

    public List<PhoneNumbersEntity> getEntities() {
        EntityManager entityManager = getEntityManagerFactory().createEntityManager();

        List<PhoneNumbersEntity> entities = (List<PhoneNumbersEntity>) entityManager.createQuery(SELECT_ALL_ENTITIES_SQL).getResultList();

        entityManager.close();

        return entities;
    }
}
