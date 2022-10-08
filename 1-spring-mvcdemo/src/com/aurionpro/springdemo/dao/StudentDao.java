package com.aurionpro.springdemo.dao;

import java.util.List;

import com.aurionpro.springdemo.entity.Student;

public interface StudentDao {
	List<Student> getStudents();
	public void addOrUpdateStudent(Student student);
	Student getStudentById(int id);
	void deleteStudent(Student student);
}
