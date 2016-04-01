package customcode;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.DBUtil;
import model.Studentgrade;

public class ProcessGrades {

	public static List<Studentgrade> getStudentGradeByID(int _studentid) {
		//
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "Select s from Studentgrade s where s.studentid = :studentid";
		TypedQuery<Studentgrade> q = em.createQuery(qString, model.Studentgrade.class);
		q.setParameter("studentid", _studentid);
		Studentgrade st = null;
		List<Studentgrade> students = null;

		try {

			students = q.getResultList();
			if (students == null || students.isEmpty())
				students = null;

		} catch (Exception e) {
			System.out.println(e);
		} finally {

			em.close();
			System.out.println("Finished");
			return students;
		}

	}

	public static List<Studentgrade> getStudentGradeByType(String _type) {
		//
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "Select s from Studentgrade s where s.type = :type";
		TypedQuery<Studentgrade> q = em.createQuery(qString, model.Studentgrade.class);
		q.setParameter("type", _type);
		// Studentgrade st = null;
		List<Studentgrade> students = null;

		try {

			students = q.getResultList();
			if (students == null || students.isEmpty())
				students = null;

		} catch (Exception e) {
			System.out.println(e);
		} finally {

			em.close();
			System.out.println("Finished");
			return students;
		}

	}

	public static List<Studentgrade> getStudentGradeByIDAndType(int _studentid, String _type) {
		//
		EntityManager em = DBUtil.getEmFactory().createEntityManager();

		String qString = "Select s from Studentgrade s where" + " s.studentid = :studentid and s.type = :type";
		TypedQuery<Studentgrade> q = em.createQuery(qString, model.Studentgrade.class);
		q.setParameter("studentid", _studentid);
		q.setParameter("type", _type);
		Studentgrade st = null;
		List<Studentgrade> students = null;

		try {

			students = q.getResultList();
			if (students == null || students.isEmpty())
				students = null;

		} catch (Exception e) {
			System.out.println(e);
		} finally {

			em.close();
			System.out.println("Finished");
			return students;
		}

	}

	public static int updateGrade(int _id, int _grade) {
		//
		Date today = new Date();
		System.out.println("today " + today);
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		String qString = "Update Studentgrade s set s.assigndate = :assigndate, s.grade = :grade " + "where s.id = :id";
		TypedQuery<Studentgrade> q = em.createQuery(qString, model.Studentgrade.class);
		q.setParameter("assigndate", today);
		q.setParameter("grade", _grade);
		q.setParameter("id", _id);
		int count = 0;

		try {
			trans.begin();
			count = q.executeUpdate();
			trans.commit();

		} catch (Exception e) {
			System.out.println(e);
			trans.rollback();
		} finally {

			em.close();
			System.out.println("Finished");
			return count;
		}

	}

}
