package basics;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class AddDepartments {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql");
		EntityManager em = emf.createEntityManager();
		
		var d = new Department();
		d.setId(90);
		d.setName("Sports");
		
		em.getTransaction().begin();
		em.persist(d);
		em.getTransaction().commit();
		
		em.close();
		emf.close();
	}
}
