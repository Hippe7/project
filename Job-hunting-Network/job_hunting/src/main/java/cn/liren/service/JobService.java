package cn.liren.service;

import cn.liren.domain.Enterprise;
import cn.liren.domain.Job;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface JobService {
    List<Job> findjobAll();
    void updateDate(Date date, int id);

    Enterprise findEname(Integer eid);

    List<Job> findKey(String key);

    boolean addJob(Job job);

    List<Job> findByEid(Integer eid);

    Job findById(Integer id);

    List<Map<String,Object>> findAll();

    boolean updateStatus(Integer id, String status);

    boolean deleteJob(Integer jid);
}
