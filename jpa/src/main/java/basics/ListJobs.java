package basics;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ListJobs {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql");
		EntityManager em = emf.createEntityManager();
		
		var query = em.createQuery("from basics.Jobs", Jobs.class);
		var jobs = query.getResultList();
		
		for (var job : jobs) {
			System.out.printf("%-20s   %-20s   %-5s   %-5s\n", job.getId(), job.getTitle(), job.getMin_sal(), job.getMax_sal());
		}
		
		em.close();
		emf.close();
	}
}
