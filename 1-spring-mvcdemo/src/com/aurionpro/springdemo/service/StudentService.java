package com.aurionpro.springdemo.service;

import java.util.List;

import com.aurionpro.springdemo.entity.Student;

public interface StudentService {
	List<Student> getStudents();
	void addOrUpdateStudent(Student student);
	Student getStudentById(int id);
	void deleteStudent(Student student);
}
