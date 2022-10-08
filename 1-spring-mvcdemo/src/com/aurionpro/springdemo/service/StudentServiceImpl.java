package com.aurionpro.springdemo.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aurionpro.springdemo.dao.StudentDao;
import com.aurionpro.springdemo.entity.Student;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDao studentDao;
	
	@Override
	@Transactional
	public List<Student> getStudents() {
		return studentDao.getStudents();
	}

	@Override
	@Transactional
	public void addOrUpdateStudent(Student student) {
		studentDao.addOrUpdateStudent(student);
	}

	@Override
	@Transactional
	public Student getStudentById(int id) {
		return studentDao.getStudentById(id);
	}

	@Override
	@Transactional
	public void deleteStudent(Student student) {
		studentDao.deleteStudent(student);
	}

}
