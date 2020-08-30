package mapper;

import pojo.Student;

import java.util.List;

public interface ShowMapper {
    //添加一条数据
     int add(Student stu);
    //删除一条数据
     int delete(int id);
    //获取一条信息
     int get(int id);
    //更新一条信息
     int update(Student stu);
    //获取所有信息
     List<Student> list();
}
