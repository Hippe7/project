package cn.liren.dao;

import cn.liren.domain.Enterprise;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Repository
@RequestMapping("enterpriseDao")
public interface EnterpriseDao {
    boolean addEnterprise(Enterprise enterprise);

    Enterprise findByLoginNameAndPassword(@Param("loginName") String loginName, @Param("password") String password);

    Enterprise findByLoginName(@Param("loginName") String loginName);

    Enterprise findById(@Param("eid") Integer eid);

    List<Enterprise> findAll();

    boolean deleEnt(@Param("id") Integer id);
}
