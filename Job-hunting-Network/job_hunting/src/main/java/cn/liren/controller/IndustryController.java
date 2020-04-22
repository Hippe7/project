package cn.liren.controller;

import cn.liren.domain.Industry;
import cn.liren.service.IndustryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("industry")
public class IndustryController {
    @Autowired
    private IndustryService industryService;

    public void findAllIndustry(HttpSession session){
        List<Industry> industrys = industryService.findAllIndustry();
        session.setAttribute("industryList",industrys);
    }
}
