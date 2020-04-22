package cn.liren.dao;

import cn.liren.domain.Industry;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Repository
@RequestMapping("industryDao")
public interface IndustryDao {
    List<Industry> findAllIndustry();
}
