package cn.liren.service.impl;

import cn.liren.dao.ResumeDao;
import cn.liren.domain.Resume;
import cn.liren.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
@RequestMapping("resumeService")
public class ResumeServiceImpl implements ResumeService {
    @Autowired
    private ResumeDao resumeDao;

    @Override
    public boolean addResume(Resume resume) {
        boolean flag = false;
        boolean b = resumeDao.addResume(resume);
        boolean b1 = resumeDao.updateInternship(resume);
        boolean b2 = resumeDao.updateEducation(resume);
        boolean b3 = resumeDao.updateTrain(resume);
        boolean b4 = resumeDao.updateJob_intention(resume);
        boolean b5 = resumeDao.updateAdditional(resume);
        boolean b6 = resumeDao.updateIt(resume);
        boolean b7 = resumeDao.updateExperience(resume);
        if (b&&b1&&b2&&b3&&b4&&b5&&b6&&b7) flag = true;
        return flag;
    }

    @Override
    public Resume selectResume(Integer sid) {
        return resumeDao.selectResume(sid);
    }
}
