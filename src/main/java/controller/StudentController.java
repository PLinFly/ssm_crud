package controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Student;
import service.ShowAll;
import util.Page;

import java.util.List;

@Controller
@RequestMapping("")
public class StudentController {

    @Autowired
    private ShowAll showAll;

    @RequestMapping("/list")
    public ModelAndView showList(Page page){
        ModelAndView mav = new ModelAndView();
        PageHelper.offsetPage(page.getStart(),5);
        List<Student> sc = showAll.list();
        //System.out.println(sc.get(0).getName());
        int total = (int) new PageInfo<Student>(sc).getTotal();

        page.caculateLast(total);
        mav.addObject("sc",sc);
        mav.setViewName("showJSP");
        return mav;
    }

    @RequestMapping("/operate")
    public ModelAndView operateList(Page page){
        ModelAndView mav = new ModelAndView();
        PageHelper.offsetPage(page.getStart(),5);
        List<Student> sc = showAll.list();
        //System.out.println(sc.get(0).getName());
        int total = (int) new PageInfo<Student>(sc).getTotal();

        page.caculateLast(total);
        mav.addObject("sc",sc);
        mav.setViewName("operateJSP");
        return mav;
    }

    @RequestMapping("/delete")
    public ModelAndView showSelect(Student stu){
        ModelAndView mav = new ModelAndView();
        stu.setId(stu.getId());
        String delete = showAll.deleteStu(stu.getId());
        mav.addObject("delete",delete);
        mav.setViewName("deleteJSP");
        return mav;
    }

    @RequestMapping("/add")
    public ModelAndView showAdd(Student stu){
        ModelAndView mav = new ModelAndView("redirect:/showJSP2");
        stu.setId(stu.getId());
        stu.setGender(stu.getGender());
        stu.setName(stu.getName());
        String add = showAll.addStu(stu);
        mav.addObject("add",add);
        mav.setViewName("addJSP");
        return mav;
    }

    @RequestMapping("/update")
    public ModelAndView showUpdate(Student stu){
        ModelAndView mav = new ModelAndView();
        stu.setId(stu.getId());
        stu.setGender(stu.getGender());
        stu.setName(stu.getName());
        String update = showAll.updateStu(stu);
        mav.addObject("update",update);
        mav.setViewName("updateJSP");
        return mav;
    }

    @RequestMapping("/get")
    public ModelAndView showGet(Student stu){
        ModelAndView mav = new ModelAndView();
        List<Student> sc = showAll.list();
        mav.addObject("sc",sc);
        mav.setViewName("showJSP2");
        return mav;
    }
}
