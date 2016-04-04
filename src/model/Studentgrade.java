package model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the STUDENTGRADE database table.
 * 
 */
@Entity
@NamedQuery(name="Studentgrade.findAll", query="SELECT s FROM Studentgrade s")
public class Studentgrade implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private long id;

	@Temporal(TemporalType.DATE)
	private Date assigndate;

	private String assignment;

	private int grade;

	private int studentid;

	@Column(name="\"TYPE\"")
	private String type;

	public Studentgrade() {
	}

	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getAssigndate() {
		return this.assigndate;
	}

	public void setAssigndate(Date assigndate) {
		this.assigndate = assigndate;
	}

	public String getAssignment() {
		return this.assignment;
	}

	public void setAssignment(String assignment) {
		this.assignment = assignment;
	}

	public int getGrade() {
		return this.grade;
	}

	public void setGrade(int _grade) {
		this.grade = _grade;
	}

	public int getStudentid() {
		return this.studentid;
	}

	public void setStudentid(int _studentid) {
		this.studentid = _studentid;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}