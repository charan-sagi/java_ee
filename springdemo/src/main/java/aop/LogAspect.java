package aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Aspect
@Component
@Order(0)
public class LogAspect {
	//Before Advice
	@Before(value = "execution(* aop.OrderService.*(..))") //pointcut
	public void beforeAdviceMethod(JoinPoint jp) {
		System.out.println(jp.getClass());
		System.out.println("Before Advice --> " + jp.getSignature());
	}
	
	@After(value = "execution(* aop.OrderService.place*(..))")
	public void afterAdviceMethod(JoinPoint jp) {
		System.out.println("After Advice --> " + jp.getSignature());
	}
}
