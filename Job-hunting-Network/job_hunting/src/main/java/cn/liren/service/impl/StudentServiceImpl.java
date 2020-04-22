package cn.liren.service.impl;

import cn.liren.dao.StudentDao;
import cn.liren.domain.Admin;
import cn.liren.domain.Student;
import cn.liren.service.StudentService;
import cn.liren.util.MailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@RequestMapping("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;

    @Override
    public boolean addStudent(Student student) {
        boolean b = studentDao.addStudent(student);
        return b;
    }

    @Override
    public Student findByLoginNameAndPassword(String loginName, String password) {
        return studentDao.findByLoginNameAndPassword(loginName,password);
    }

    @Override
    public void mail(Student student) {
        String content = "<a>您好"+student.getStu_name()+",欢迎您使用毕业生就业系统。</br> 声明(Declaration): </br> 本邮件含有保密信息，仅限于收件人所用。禁止任何人未经发件人许可以任何形式（包括但不限于部分地泄露、复制或散发）不当地使用本邮件中的信息。如果您错收了本邮件，请您立即电话或邮件通知发件人并删除本邮件，谢谢！ </br>  This e-mail contains confidential information, which is intended only for the receiver. Any use of the information contained herein in any way (including, but not limited to, total or partial disclosure, reproduction, or dissemination) by persons other than the intended recipient(s) is prohibited. If you receive this e-mail in error, please notify the sender by phone or email immediately and delete it. Thanks! </br>您的账号是"+student.getLoginName()+"</a>";
        //邮件提醒，邮件正文
        MailUtils.sendMail(student.getEmail(),content,"毕业生就业系统");
    }

    @Override
    public boolean findByLoginName(String loginName) {
        Student student = studentDao.findByLoginName(loginName);
        boolean b = false;
        if (student!=null) b = true;
        return b;
    }

    @Override
    public Student findById(Integer sid) {
        return studentDao.findById(sid);
    }

    @Override
    public Admin findAdmin(String loginName, String password) {
        return studentDao.findAdmin(loginName,password);
    }

    @Override
    public List<Student> findAll() {
        return studentDao.findAll();
    }

    @Override
    public boolean updateStu(Student student) {
        return studentDao.updateStu(student);
    }

    @Override
    public boolean deleStu(Integer id) {
        return studentDao.deleStu(id);
    }

    @Override
    public List<Student> findByName(String key) {
        return studentDao.findByName(key);
    }
}
