package basics;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="jobs")
@Entity(name="basics.Jobs")
public class Jobs {
	@Id
	@Column(name="job_id")
	private String id;
	
	@Column(name="job_title")
	private String title;
	
	@Column(name="min_salary")
	private String min_sal;
	
	@Column(name="max_salary")
	private String max_sal;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMin_sal() {
		return min_sal;
	}

	public void setMin_sal(String min_sal) {
		this.min_sal = min_sal;
	}

	public String getMax_sal() {
		return max_sal;
	}

	public void setMax_sal(String max_sal) {
		this.max_sal = max_sal;
	}
}