package service.impl;

import mapper.ShowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Student;
import service.ShowAll;

import java.util.List;

@Service
public class ShowAllImpl implements ShowAll{
    @Autowired
    ShowMapper showMapper;

    public List<Student> list() {
        return showMapper.list();
    }

    public String addStu(Student stu) {
        System.out.println("This is Add Student");
        int i = showMapper.add(stu);
        String message = "";
        if(i>0){ message = "添加成功"; }
        else{ message = "添加失败"; }
        return message;
    }

    public String deleteStu(int id) {
        System.out.println("This is Delete Student");
        int i = showMapper.delete(id);
        String message = "";
        if(i>0){ message = "删除成功"; }
        else{ message = "删除失败"; }
        return message;
    }

    public String updateStu(Student stu) {
        System.out.println("This is Update Student");
        int i = showMapper.update(stu);
        String message = "";
        if(i>0){ message = "更新成功"; }
        else{ message = "更新失败"; }
        return message;
    }

    public Student getStu(int id) {
        System.out.println("This is Get Student");
        return showMapper.get(id);
    }

    public ShowMapper getShowMapper(){
        return showMapper;
    }

    public void setShowMapper(ShowMapper showMapper){
        this.showMapper = showMapper;
    }
}
