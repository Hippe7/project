package cn.liren.dao;

import cn.liren.domain.Enterprise;
import cn.liren.domain.Job;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Repository
@RequestMapping("jobDao")
public interface JobDao {

    List<Job> findjobAll();

    Enterprise findEnameByEid(@Param("e_id") Integer eid);

    void updateDate(@Param("date") Date date , @Param("id") int id);

    List<Job> findKey(@Param("key") String key);

    boolean addJob(Job job);

    boolean updateRequirement(Job job);

    List<Job> findByEid(@Param("eid") Integer eid);

    Job findById(@Param("id") Integer id);

    List<Map<String,Object>> findAll();

    boolean updateStatus(@Param("id") Integer id, @Param("status") String status);

    boolean deleteJob(@Param("id") Integer id);
}
