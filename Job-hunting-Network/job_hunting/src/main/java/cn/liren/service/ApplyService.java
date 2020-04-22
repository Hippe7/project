package cn.liren.service;

import cn.liren.domain.Apply;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ApplyService {
    boolean addJob(Apply apply);

    Apply findBySidRid(Integer sid, Integer jid);

    List<Map<String,Object>> findByEid(Integer eid);

    boolean updateStatus(Integer aid,String y);

    List<Map<String,Object>> findBySid(Integer sid);
}
