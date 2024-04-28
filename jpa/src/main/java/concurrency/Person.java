package concurrency;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

@Table(name = "concurrency_persons")
@Entity(name = "concurrency.Person")
public class Person {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ind;
	
	@Column(length = 20)
	private String name;
	
	@Version
	@Column(name = "change_version")
	private int version;

	public int getInd() {
		return ind;
	}

	public void setInd(int ind) {
		this.ind = ind;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
