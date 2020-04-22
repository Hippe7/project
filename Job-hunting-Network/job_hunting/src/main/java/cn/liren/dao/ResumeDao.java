package cn.liren.dao;

import cn.liren.domain.Resume;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
@RequestMapping("resumeDao")
public interface ResumeDao {

    boolean addResume(Resume resume);
    boolean updateInternship(Resume resume);
    boolean updateEducation(Resume resume);
    boolean updateTrain(Resume resume);
    boolean updateJob_intention(Resume resume);
    boolean updateAdditional(Resume resume);
    boolean updateIt(Resume resume);
    boolean updateExperience(Resume resume);

    Resume selectResume(@Param("sid") Integer sid);


}
