package aop;

import org.springframework.stereotype.Component;

@Component
public class OrderService {
	 public void placeOrder() {
		  System.out.println("Placing order!");
	  }
	  
	  public String getOrderStatus(int orderId) {
		  System.out.println("Getting order status  for " + orderId);
		  return String.valueOf(orderId);
	  }
	  
	  public void cancelOrder(int orderId) {
		  System.out.println("Cancelling order!" + orderId);
	  }
}
