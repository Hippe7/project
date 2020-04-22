package cn.liren.service.impl;

import cn.liren.dao.EnterpriseDao;
import cn.liren.domain.Enterprise;
import cn.liren.domain.Student;
import cn.liren.service.EnterpriseService;
import cn.liren.util.MailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@RequestMapping("enterpriseService")
public class EnterpriseServiceImpl implements EnterpriseService {
    @Autowired
    private EnterpriseDao enterpriseDao;
    @Override
    public boolean addEnterprise(Enterprise enterprise) {
        return enterpriseDao.addEnterprise(enterprise);
    }

    @Override
    public Enterprise findByLoginNameAndPassword(String loginName, String password) {
        return enterpriseDao.findByLoginNameAndPassword(loginName, password);
    }

    @Override
    public void mail(Enterprise enterprise) {
        String content = "<a>您好"+enterprise.getEnt_name()+",欢迎您使用毕业生就业系统。</br> 声明(Declaration): </br> 本邮件含有保密信息，仅限于收件人所用。禁止任何人未经发件人许可以任何形式（包括但不限于部分地泄露、复制或散发）不当地使用本邮件中的信息。如果您错收了本邮件，请您立即电话或邮件通知发件人并删除本邮件，谢谢！ </br>  This e-mail contains confidential information, which is intended only for the receiver. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it. Thanks! </br>您的账号是"+enterprise.getLoginName()+"</a>";
        //邮件提醒，邮件正文
        MailUtils.sendMail(enterprise.getEmail(),content,"毕业生就业系统");
    }

    @Override
    public boolean findByLoginName(String loginName) {
        Enterprise enterprise = enterpriseDao.findByLoginName(loginName);
        boolean b = false;
        if (enterprise!=null) b = true;
        return b;
    }

    @Override
    public Enterprise findById(Integer eid) {
        return enterpriseDao.findById(eid);
    }

    @Override
    public List<Enterprise> findAll() {
        return enterpriseDao.findAll();
    }

    @Override
    public boolean deleEnt(Integer id) {
        return enterpriseDao.deleEnt(id);
    }
}
