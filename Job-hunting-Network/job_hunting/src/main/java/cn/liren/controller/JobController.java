package cn.liren.controller;

import cn.liren.domain.Enterprise;
import cn.liren.domain.Industry;
import cn.liren.domain.Job;
import cn.liren.service.IndustryService;
import cn.liren.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("job")
public class JobController {
    @Autowired
    private JobService jobService;
    @Autowired
    private IndustryController industryController;
    @Autowired
    private EnterpriseController enterpriseController;

    @RequestMapping("findjob")
    public String findjob(HttpSession session){
        List<Job> jobs = jobService.findjobAll();
        industryController.findAllIndustry(session);
        session.setAttribute("jobList", jobs);
        return "redirect:../index.jsp";
    }
    @RequestMapping("findKey")
    public String findKey(String key,HttpSession session){
        List<Job> key1 = jobService.findKey(key);
        session.setAttribute("key",key1);
        return "joblist";
    }
    @RequestMapping("addJob")
    @ResponseBody
    public boolean addJob(String job_name, String salary, String major, String education, String job_address, String requirement, String college, Integer iid,HttpSession session){
        Job job = new Job();
        job.setJob_name(job_name);
        job.setSalary(salary);
        job.setMajor(major);
        job.setEducation(education);
        job.setJob_address(job_address);
        job.setRequirement(requirement);
        job.setCollege(college);
        job.setIid(iid);

        job.setDate(new Date());
        job.setStatus("N");

        Enterprise enterprise = (Enterprise)session.getAttribute("enterprise");
        job.setEid(enterprise.getId());

        boolean b = jobService.addJob(job);
        return b;
    }


    /**
     * 使用initBinder来处理Date类型
     * @param binder
     */
    @InitBinder
    public void initBinder(ServletRequestDataBinder binder) {
        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-mm-dd"), true));
    }
    @RequestMapping("jobDetails")
    public String jobDetails(HttpSession session,Integer id){
        Job job = jobService.findById(id);
        session.setAttribute("job",job);
        Enterprise enterprise1 = enterpriseController.findById(job.getEid());
        session.setAttribute("enterprise1",enterprise1);
        return "jobDetails";
    }
}
