package cn.liren.service.impl;

import cn.liren.dao.ApplyDao;
import cn.liren.domain.Apply;
import cn.liren.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Service
@RequestMapping("applyService")
public class ApplyServiceImpl implements ApplyService {
    @Autowired
    private ApplyDao applyDao;

    @Override
    public boolean addJob(Apply apply) {
        return applyDao.addJob(apply);
    }

    @Override
    public Apply findBySidRid(Integer sid, Integer jid) {
        return applyDao.findBySidRid(sid,jid);
    }

    @Override
    public List<Map<String,Object>> findByEid(Integer eid) {
        return applyDao.findByEid(eid);
    }

    @Override
    public boolean updateStatus(Integer aid, String y) {
        return applyDao.updateStatus(aid,y);
    }

    @Override
    public List<Map<String, Object>> findBySid(Integer sid) {
        return applyDao.findBySid(sid);
    }
}
