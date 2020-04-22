package cn.liren.service.impl;

import cn.liren.dao.IndustryDao;
import cn.liren.domain.Industry;
import cn.liren.service.IndustryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@RequestMapping("industryService")
public class IndustryServiceImpl implements IndustryService {
    @Autowired
    private IndustryDao industryDao;

    @Override
    public List<Industry> findAllIndustry() {
        return industryDao.findAllIndustry();
    }
}
