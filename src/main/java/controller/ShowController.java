package controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pojo.Student;
import service.ShowAll;
import util.Page;

import java.util.List;

@Controller
@RequestMapping("/mvc")
public class ShowController {

    @Autowired
    ShowAll showAll;

    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String list(Page page,Model model){
        PageHelper.offsetPage(page.getStart(),5);
        List<Student> sc = showAll.list();
        int total = (int) new PageInfo<Student>(sc).getTotal();

        page.caculateLast(total);
        model.addAttribute("page",page);
        model.addAttribute("sc",sc);
        return "operateJSP";
    }

    @RequestMapping(value = "/list",method = RequestMethod.POST)
    public String add(Student stu){
        showAll.addStu(stu);
        return "redirect:/mvc/list";
    }

    @RequestMapping(value  = "/delete/{id}")
    public String delete(@PathVariable("id") Integer id){
        showAll.deleteStu(id);
        return "redirect:/mvc/list";
    }

    @RequestMapping(value = "/list/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable("id") Integer id,Model model){
        Student sc = showAll.getStu(id);
        model.addAttribute("sc",sc);
        return "updateJSP";
    }

    @RequestMapping(value = "/update",method = RequestMethod.PUT)
    public String update(Student stu){
        showAll.updateStu(stu);
        return "redirect:/mvc/list";
    }
}
