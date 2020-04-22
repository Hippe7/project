package cn.liren.controller;

import cn.liren.domain.Apply;
import cn.liren.domain.Enterprise;
import cn.liren.domain.Job;
import cn.liren.domain.Student;
import cn.liren.service.ApplyService;
import cn.liren.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * author 郑晓鹏
 */
@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private JobService jobService;
    @Autowired
    private ApplyService applyService;
    /**
     * 定向毕业生注册界面
     * @return
     */
    @RequestMapping("findSutRegist.action")
    public String findSutRegist(){
        return "register-stu";
    };
    /**
     * 定向企业注册界面
     * @return
     */
    @RequestMapping("findEntRegist.action")
    public String findEntRegist(){
        return "register-ent";
    };

    /**
     * 定向登录界面
     * @return
     */
    @RequestMapping("findLogin")
    public String findLogin(HttpSession session) {
        return "login";
    }

    /**
     * 通过顶部进入我的页面
     * @param session
     * @return
     */
    @RequestMapping("findSelf")
    public String findSelf(HttpSession session){
        Student student =(Student) session.getAttribute("student");
        Enterprise enterprise = (Enterprise)session.getAttribute("enterprise");
        if (enterprise!=null){
            List<Job> EntryJobList = jobService.findByEid(enterprise.getId());
            session.setAttribute("entryJobList",EntryJobList);
            List<Map<String,Object>> applyEnt = applyService.findByEid(enterprise.getId());
            session.setAttribute("applyEnt",applyEnt);
            return "company";
        }else {
            return "intro";
        }
        /*if (student!=null&enterprise==null) return "intro";
        else return "company";*/
    }

    @RequestMapping("stuResume")
    public String stuResume(){
        return "stuResume";
    }

    @RequestMapping("stu")
    public String stu(){
        return "stu";
    }

    @RequestMapping("load")
    public String load(){
        return "admin";
    }

    @RequestMapping("jobDetails")
    public String jobDetails(){
        return "admin_job2";
    }
}
