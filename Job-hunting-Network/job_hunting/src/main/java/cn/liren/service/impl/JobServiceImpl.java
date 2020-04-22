package cn.liren.service.impl;

import cn.liren.dao.JobDao;
import cn.liren.domain.Enterprise;
import cn.liren.domain.Job;
import cn.liren.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
@RequestMapping("jobService")
public class JobServiceImpl implements JobService {
    @Autowired
    private JobDao jobDao;

    @Override
    public List<Job> findjobAll() {
        return jobDao.findjobAll();
    }
    public void updateDate(Date date,int id){
        jobDao.updateDate(date,id);
    }

    @Override
    public Enterprise findEname(Integer eid) {
        return jobDao.findEnameByEid(eid);
    }

    @Override
    public List<Job> findKey(String key) {
        return jobDao.findKey(key);
    }

    @Override
    public boolean addJob(Job job) {
        boolean flag = false;
        boolean b = jobDao.addJob(job);
        boolean b1 = jobDao.updateRequirement(job);
        if (b&&b1) flag = true;
        return flag;
    }

    @Override
    public List<Job> findByEid(Integer eid) {
        return jobDao.findByEid(eid);
    }

    @Override
    public Job findById(Integer id) {
        return jobDao.findById(id);
    }

    @Override
    public List<Map<String, Object>> findAll() {
        return jobDao.findAll();
    }

    @Override
    public boolean updateStatus(Integer id, String status) {
        return jobDao.updateStatus(id,status);
    }

    @Override
    public boolean deleteJob(Integer jid) {
        return jobDao.deleteJob(jid);
    }
}
