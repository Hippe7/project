package cn.liren.controller;

import cn.liren.domain.Apply;
import cn.liren.domain.Resume;
import cn.liren.domain.Student;
import cn.liren.service.ApplyService;
import cn.liren.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("apply")
public class ApplyController {
    @Autowired
    private ApplyService applyService;
    @Autowired
    private ResumeService resumeService;

    @ResponseBody
    @RequestMapping("applyJob")
    public String applyJob(Integer jid, Integer eid, HttpSession session){
        Student student = (Student) session.getAttribute("student");
        if (student==null)
        return "NO";
        else {
            Resume resume = resumeService.selectResume(student.getId());
            if (resume==null) return "NOO";
            Apply apply = new Apply();
            apply.setEid(eid);
            apply.setJid(jid);
            apply.setSid(student.getId());
            apply.setRid(resume.getId());
            apply.setStatus("N");
            apply.setDate(new Date());
            boolean b = false;
            Apply apply1 = applyService.findBySidRid(student.getId(),jid);
            if (apply1==null)
            b = applyService.addJob(apply);
            if (b) return "YES";
            return "NOOO";
        }
    }
    @ResponseBody
    @RequestMapping("applyStatus")
    public String applyStatus(Integer aid,int flag){
        if (flag==1){
            boolean b = applyService.updateStatus(aid, "Y");
            return b?"Y":"N";
        }else {
            boolean b = applyService.updateStatus(aid, "P");
            return b?"P":"N";
        }
    }

    @RequestMapping("applyMy")
    public String applyMy(HttpSession session){
        Student student =(Student) session.getAttribute("student");
        List<Map<String, Object>> applyMy = applyService.findBySid(student.getId());
        session.setAttribute("applyMy",applyMy);
        return "applyDetails";
    }
}
