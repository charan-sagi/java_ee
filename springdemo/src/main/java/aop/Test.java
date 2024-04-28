package aop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Test implements CommandLineRunner{
	@Autowired
	private OrderService order;
	
	public void run(String... args) throws Exception {
		System.out.println(order.getClass());
		order.placeOrder();
		order.cancelOrder(1);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(Test.class, args);
	}

}
