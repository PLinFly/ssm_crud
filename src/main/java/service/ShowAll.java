package service;

import pojo.Student;

import java.util.List;

public interface ShowAll {
    List<Student> list();

    String addStu(Student stu);

    String deleteStu(int id);

    String updateStu(Student stu);

    Student getStu(int id);
}
