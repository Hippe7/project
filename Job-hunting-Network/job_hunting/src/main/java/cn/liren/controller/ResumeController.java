package cn.liren.controller;

import cn.liren.domain.Resume;
import cn.liren.domain.Student;
import cn.liren.service.ResumeService;
import cn.liren.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("resume")
public class ResumeController {
    @Autowired
    private ResumeService resumeService;
    @Autowired
    private StudentService studentService;
    @RequestMapping("saveResume")
    @ResponseBody
    public boolean saveResume(String sex, String birthday, String college, String s_native, String idcard, String salary,
                              String address, String major, String internship, String education, String train, String job_intention,
                              String additional, String it, String experience, HttpSession session){
        //封装简历信息
        Resume resume = new Resume();
        resume.setSex(sex);
        resume.setBirthday(birthday);
        resume.setCollege(college);
        resume.setS_native(s_native);
        resume.setIdcard(idcard);
        resume.setSalary(salary);
        resume.setAddress(address);
        resume.setMajor(major);
        resume.setInternship(internship);
        resume.setEducation(education);
        resume.setTrain(train);
        resume.setJob_intention(job_intention);
        resume.setAdditional(additional);
        resume.setIt(it);
        resume.setExperience(experience);

        Student student = (Student) session.getAttribute("student");
        resume.setSid(student.getId());

        return  resumeService.addResume(resume);
    }
    @RequestMapping("myResume")
    public String myResume(HttpSession session){
        Student student = (Student)session.getAttribute("student");
        Integer sid = student.getId();
        Resume resume = resumeService.selectResume(sid);
        session.setAttribute("resume",resume);
        return "intro1";
    }
    @RequestMapping("hisResume")
    public String hisResume(HttpSession session,Integer rid, Integer sid){
        Resume resume = resumeService.selectResume(sid);
        Student student = studentService.findById(sid);

        session.setAttribute("resume1",resume);
        session.setAttribute("student1",student);
        return  "intro2";
    }
}
