package cn.liren.domain;

import java.util.Date;

public class Job {
    private Integer id;
    private String job_name;
    private String salary;
    private String major;
    private String education;
    private String job_address;
    private String requirement;
    private Date date;
    private Integer eid;
    private String college;
    private Integer iid;
    private String status;

    public Job() {
    }

    public Job(Integer id, String job_name, String salary, String major, String education, String job_address, String requirement, Date date, Integer eid, String college, Integer iid, String status) {
        this.id = id;
        this.job_name = job_name;
        this.salary = salary;
        this.major = major;
        this.education = education;
        this.job_address = job_address;
        this.requirement = requirement;
        this.date = date;
        this.eid = eid;
        this.college = college;
        this.iid = iid;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Job{" +
                "id=" + id +
                ", job_name='" + job_name + '\'' +
                ", salary='" + salary + '\'' +
                ", major='" + major + '\'' +
                ", education='" + education + '\'' +
                ", job_address='" + job_address + '\'' +
                ", requirement='" + requirement + '\'' +
                ", date=" + date +
                ", eid=" + eid +
                ", college='" + college + '\'' +
                ", iid=" + iid +
                ", status='" + status + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJob_name() {
        return job_name;
    }

    public void setJob_name(String job_name) {
        this.job_name = job_name;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getJob_address() {
        return job_address;
    }

    public void setJob_address(String job_address) {
        this.job_address = job_address;
    }

    public String getRequirement() {
        return requirement;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public Integer getIid() {
        return iid;
    }

    public void setIid(Integer iid) {
        this.iid = iid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
