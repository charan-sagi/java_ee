package ioc;

import java.util.List;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

@Component
@Lazy
public class PythonBooks implements BooksCatalog{
	
	public PythonBooks() {
		System.out.println("PythonBooks()");
	}
	
	public List<String> getBooks() {
		return List.of("Python Tricks", "Basics of Python");
	}
 
}
