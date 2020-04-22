package cn.liren.controller;

import cn.liren.domain.Enterprise;
import cn.liren.domain.Job;
import cn.liren.service.EnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * author 郑晓鹏
 */
@Controller
@RequestMapping("enterprise")
public class EnterpriseController {
    @Autowired
    private EnterpriseService enterpriseService;

    /**
     * 企业注册
     * @param enterprise
     * @return
     */
    @RequestMapping("ent_register")
    public String register(Enterprise enterprise){
        boolean b = false;
        if (enterprise.getLoginName()==null){
            return null;
        }else {
            new Thread(() -> {
                enterpriseService.mail(enterprise);
            }).start();

            b = enterpriseService.addEnterprise(enterprise);

            return b?"login":"redirect:register-ent";
        }
    }

    /**
     * 企业登录
     * @param loginName
     * @param password
     * @param session
     * @return
     */
    @RequestMapping("login2.action")
    public String login(String loginName,String password,HttpSession session){
        Enterprise enterprise = enterpriseService.findByLoginNameAndPassword(loginName, password);
        if(enterprise!=null) {
            session.setAttribute("user", enterprise.getEnt_name());
            session.setAttribute("enterprise",enterprise);
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
    @RequestMapping("checkLoginName2")
    public boolean validateName(String loginName) {
        boolean b = enterpriseService.findByLoginName(loginName);
        return b;
    }

    public Enterprise findById(Integer eid) {
        return enterpriseService.findById(eid);
    }
}
