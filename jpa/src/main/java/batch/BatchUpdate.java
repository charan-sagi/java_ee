package batch;

import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import concurrency.Person;

public class BatchUpdate {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("mysql");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction().begin();		
		
		Query q = em.createQuery("update manytoone.Employee set salary = salary + :hike where salary > 10000");
		q.setParameter("hike", 2000);
		
		int count = q.executeUpdate();
		
		em.getTransaction().commit();
		
		System.out.println(count);
		
		em.close();
		emf.close();
	}
}
