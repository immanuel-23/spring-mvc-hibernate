package com.aurionpro.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.aurionpro.springdemo.entity.Student;

@Repository // 
public class StudentDaoImpl implements StudentDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Student> getStudents() {

		Session currentSession = sessionFactory.getCurrentSession();
		List<Student> resultList = currentSession.createQuery("from Student", Student.class).getResultList();
		System.out.println(resultList);
		return resultList;

	}

	@Override
	public void addOrUpdateStudent(Student student) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(student);
	}

	@Override
	public Student getStudentById(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.get(Student.class, id);
		
	}

	@Override
	public void deleteStudent(Student student) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.delete(student);
	}

}
