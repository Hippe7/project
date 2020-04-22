package cn.liren.controller;

import cn.liren.domain.Student;
import cn.liren.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * author 郑晓鹏
 */
@Controller
@RequestMapping("student")
public class StudentController {
    @Autowired
    private StudentService studentService;

    /**
     * 毕业生注册
     * @param student
     * @return
     */
    @RequestMapping("stu_register")
    public String register(Student student){
        boolean b = false;
        if (student.getLoginName()==null){
            return null;
        }else {
            new Thread(() -> {
                studentService.mail(student);
            }).start();
            b = studentService.addStudent(student);
            return b?"login":"redirect:register-stu";
        }
    }

    /**
     * 毕业生登录
     * @param loginName
     * @param password
     * @param session
     * @return
     */
    @RequestMapping("login1.action")
    public String login(String loginName,String password,HttpSession session){
        Student student = studentService.findByLoginNameAndPassword(loginName, password);
        if(student!=null) {
            session.setAttribute("user", student.getStu_name());
            session.setAttribute("student",student);
            return "redirect:../index.jsp";
        }else{
            return "login";
        }
    }

    /**
     * ajax校验用户名
     * @param loginName 账号
     * @return 服务器端验证是否存在的信息
     */
    @ResponseBody
    @RequestMapping("checkLoginName")
    public boolean validateName(String loginName) {
        boolean b = studentService.findByLoginName(loginName);
        return b;
    }

    @ResponseBody
    @RequestMapping("findStu")
    public String findStu(String key,HttpSession session){
        List<Student> studentList = studentService.findByName(key);
        if (studentList.size()>0){
            session.setAttribute("studentList",studentList);
            return "YES";
        }
        return "NO";
    }
}
