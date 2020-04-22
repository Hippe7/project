package cn.liren.dao;

import cn.liren.domain.Admin;
import cn.liren.domain.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Repository
@RequestMapping("studentDao")
public interface StudentDao {

    boolean addStudent(Student student);

    Student findByLoginNameAndPassword(@Param("loginName") String loginName, @Param("password") String password);

    Student findByLoginName(@Param("loginName") String loginName);

    Student findById(@Param("sid") Integer sid);

    Admin findAdmin(@Param("loginName")String loginName, @Param("password")String password);

    List<Student> findAll();

    boolean updateStu(Student student);

    boolean deleStu(@Param("id") Integer id);

    List<Student> findByName(@Param("key") String key);
}
