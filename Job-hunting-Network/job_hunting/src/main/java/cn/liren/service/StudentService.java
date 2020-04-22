package cn.liren.service;

import cn.liren.domain.Admin;
import cn.liren.domain.Student;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


public interface StudentService {

    boolean addStudent(Student student);

    Student findByLoginNameAndPassword(String loginName,String password);

    void mail(Student student);

    boolean findByLoginName(String loginName);

    Student findById(Integer sid);

    Admin findAdmin(String loginName, String password);

    List<Student> findAll();

    boolean updateStu(Student student);

    boolean deleStu(Integer id);

    List<Student> findByName(String key);
}
