package basics;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class AddJob {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql");
		EntityManager em = emf.createEntityManager();
		
		var job = new Jobs();
		job.setId("DBA");
		job.setTitle("Database Administrator");
		job.setMin_sal("9000");
		job.setMax_sal("13000");
		
		em.getTransaction().begin();
		em.persist(job);
		em.getTransaction().commit();
		
		em.close();
		emf.close();
	}

}