package cn.liren.service;

import cn.liren.domain.Enterprise;

import java.util.List;

public interface EnterpriseService {
    boolean addEnterprise(Enterprise enterprise);

    Enterprise findByLoginNameAndPassword(String loginName,String password);

    void mail(Enterprise enterprise);

    boolean findByLoginName(String loginName);

    Enterprise findById(Integer eid);

    List<Enterprise> findAll();

    boolean deleEnt(Integer id);
}
