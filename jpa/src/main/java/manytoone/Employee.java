package manytoone;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name = "employees")
@Entity(name = "manytoone.Employee")
public class Employee {
	@Id // primary key
	@Column(name = "employee_id")
	private int id;

	@Column(name = "first_name")
	private String name;

	@Column(name = "salary")
	private int salary;

	@Column(name = "department_id")
	private int deptId;

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	@ManyToOne(fetch = FetchType.LAZY) // default is EAGER
	@JoinColumn(name = "department_id", updatable = false, insertable = false)
	private Department department;

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}