package cn.liren.dao;

import cn.liren.domain.Apply;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Repository
@RequestMapping("applyDao")
public interface ApplyDao {
    boolean addJob(Apply apply);

    Apply findBySidRid(@Param("sid") Integer sid,@Param("jid") Integer jid);

    List<Map<String,Object>> findByEid(@Param("eid") Integer eid);

    boolean updateStatus(@Param("aid")Integer aid,@Param("y") String y);

    List<Map<String,Object>> findBySid(@Param("sid") Integer sid);
}
