package aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Aspect
@Component
@Order(1)
public class ProfileAspect {
	@Pointcut(value = "execution(* aop.OrderService.*(..))")
	public void orderMethods() {
		
	}
	
	@Pointcut(value = "execution(* aop.OrderService.*(..))")
	public void paymentMethods() {
		
	}
	
	@Before("orderMethods() || paymentMethods()")
	public void beforeAdviceMethods(JoinPoint jp){
		System.out.println("Before Profile Advice --> " + jp.getSignature());
	}
}
