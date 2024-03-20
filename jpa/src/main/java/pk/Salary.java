package pk;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Table(name="salaries")
@Entity(name="pk.Salary")
public class Salary {
	@EmbeddedId
	private SalaryPK key;
	
	private int salary;

	public SalaryPK getKey() {
		return key;
	}

	public void setKey(SalaryPK key) {
		this.key = key;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}
}
