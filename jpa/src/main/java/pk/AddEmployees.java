package pk;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class AddEmployees {
	public static void main(String args[]) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql_ddl");
		EntityManager em = emf.createEntityManager();
		
		Salary s = new Salary();
		
		SalaryPK pk = new SalaryPK();
		pk.setEmployee(1);
		pk.setMonth("02-2024");
		
		s.setKey(pk);
		s.setSalary(100000);
		
		em.getTransaction().begin();
		em.persist(s);
		em.getTransaction().commit();
		
		em.close();
		emf.close();
	}
}
