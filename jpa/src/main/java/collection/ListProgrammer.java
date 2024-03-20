package collection;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ListProgrammer {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql_ddl");
		EntityManager em = emf.createEntityManager();
		
		var query = em.createQuery("from collection.Programmer", Programmer.class);
		var prog = query.getResultList();
		
		for (var p : prog) {
			System.out.println(p.getName());
			for (var s : p.getSkills()) {
				System.out.printf(" " + s);
			}
		}
		
		em.close();
		emf.close();
	}

}
