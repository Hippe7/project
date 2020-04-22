package cn.liren.controller;

import cn.liren.domain.*;
import cn.liren.service.EnterpriseService;
import cn.liren.service.JobService;
import cn.liren.service.ResumeService;
import cn.liren.service.StudentService;
import cn.liren.util.MySQLDatabaseBackup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private ResumeService resumeService;
    @Autowired
    private EnterpriseService enterpriseService;
    @Autowired
    private JobService jobService;
    @RequestMapping("login3.action")
    public String login(String loginName, String password, HttpSession session){
        Admin admin = studentService.findAdmin(loginName,password);
        if (admin!=null){
            List<Student> studentList = studentService.findAll();
            session.setAttribute("studentList",studentList);
            return "admin";
        }
        return "login";
    }
    @ResponseBody
    @RequestMapping("stuInfoSee.action")
    public boolean resumeHis(Integer id,HttpSession session){
        boolean b = false;
        session.removeAttribute("student");
        session.removeAttribute("resume");
        Student student = studentService.findById(id);
        Resume resume = resumeService.selectResume(id);
        session.setAttribute("student",student);
        session.setAttribute("resume",resume);
        if (resume!=null) b=true;
        return b;
    }
    @ResponseBody
    @RequestMapping("updateStudent")
    public String updateStudent(Integer id, String loginName, String password, String stu_name, String phone, String email,HttpSession session){
        Student student= new Student(id,loginName,password,stu_name,phone,
                email);
        System.out.println(student);
        if(student!=null){
            boolean b = studentService.updateStu(student);
            if (b){
                session.setAttribute("student",student);
                return "OK";
            }
            return "NO";
        }
        return "NO";
    }

    @ResponseBody
    @RequestMapping("delete.action")
    public String deleStu(Integer id){
        boolean b = studentService.deleStu(id);
        if (b)
            return "OK";
        return "NO";
    }
    @RequestMapping("stu")
    public void stu(Integer id,HttpSession session){
        Student student = studentService.findById(id);
        session.setAttribute("student",student);
    }

    @RequestMapping("entLoad")
    public String entLoad(HttpSession session){
        List<Enterprise> enterpriseList= enterpriseService.findAll();
        session.setAttribute("enterpriseList",enterpriseList);
        return "admin_ent";

    }
    @ResponseBody
    @RequestMapping("deleteEnt")
    public String deleteEnt(Integer id){
        boolean b = enterpriseService.deleEnt(id);
        if (b)
            return "OK";
        return "NO";
    }

    @RequestMapping("jobLoad")
    public String jobLoad(HttpSession session){
        List<Map<String, Object>> adminJob = jobService.findAll();
        session.setAttribute("adminJob",adminJob);
        return "admin_job";
    }

    @ResponseBody
    @RequestMapping("updateJstu")
    public boolean updateJstu(Integer jid,String status){
        return jobService.updateStatus(jid,status);
    }
    @ResponseBody
    @RequestMapping("deleteJob")
    public boolean deleteJob(Integer jid){
        return jobService.deleteJob(jid);
    }
    @ResponseBody
    @RequestMapping("seeJob")
    public boolean seeJob(Integer jid,HttpSession session){
        Job job = jobService.findById(jid);
        if (job!=null){
            session.setAttribute("job",job);
            return true;
        }
        return false;
    }

    @RequestMapping("backup.action" )
    public String backupI(HttpSession session){
        String basePath="D:/backupDatabase";
        String[] list=new File(basePath).list();
        session.setAttribute("backupName",list);
        return "backup";
    }

    @RequestMapping("bbackup.action")
    @ResponseBody
    public String  backup(){
        try {
            Date date=new Date();
            DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd_hh-mm-ss");
            String name="backup-"+dateFormat.format(date)+".sql";
            String IP="localhost";
            String username="root";
            String password="root";
            String savePath="D:/backupDatabase";
            String dataBase="bysj_findjob";
            if (MySQLDatabaseBackup.exportDatabaseTool(IP, username, password, savePath, name, dataBase)) {
                return "OK";
            } else {
                return "FALSE";
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return "FALSE";
    }

    @RequestMapping("rebackup.action")
    @ResponseBody
    public String  rebackup(String mess){
        try {
            MySQLDatabaseBackup.restore(mess);
            return "OK";
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "FALSE";
    }

    @RequestMapping("out.action")
    public String out(HttpSession session){
        session.invalidate();
        return "redirect:../index.jsp";
    }
    @RequestMapping("stu.action")
    public String stu(){
        return "admin";
    }
}
