package basics;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class UpdateJob {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql");
		EntityManager em = emf.createEntityManager();
		
		var job = em.find(Jobs.class, "DBA");
		 
		if (job == null) {
			System.out.println("Sorry! Job Id not found!");
		}
		else {
			em.getTransaction().begin();
			job.setMax_sal("17000");
			em.getTransaction().commit();
		}
		
		em.close();
		emf.close();
	}

}