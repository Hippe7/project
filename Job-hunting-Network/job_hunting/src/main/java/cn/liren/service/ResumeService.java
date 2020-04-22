package cn.liren.service;

import cn.liren.domain.Resume;

public interface ResumeService {

    boolean addResume(Resume resume);
    Resume selectResume(Integer sid);
}
