package cn.liren.domain;

public class Resume {
    private Integer id;
    private String sex;
    private String birthday;
    private String college;
    private String s_native;
    private String idcard;
    private String salary;
    private String address;
    private String major;

    private String internship;
    private String education;
    private String train;
    private String job_intention;

    private String additional;
    private String it;
    private String experience;

    private Integer sid;

    public Resume() {
    }

    public Resume(Integer id, String sex, String birthday, String college, String s_native, String idcard, String salary, String address, String major, String internship, String education, String train, String job_intention, String additional, String it, String experience, Integer sid) {
        this.id = id;
        this.sex = sex;
        this.birthday = birthday;
        this.college = college;
        this.s_native = s_native;
        this.idcard = idcard;
        this.salary = salary;
        this.address = address;
        this.major = major;
        this.internship = internship;
        this.education = education;
        this.train = train;
        this.job_intention = job_intention;
        this.additional = additional;
        this.it = it;
        this.experience = experience;
        this.sid = sid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getS_native() {
        return s_native;
    }

    public void setS_native(String s_native) {
        this.s_native = s_native;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getInternship() {
        return internship;
    }

    public void setInternship(String internship) {
        this.internship = internship;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getTrain() {
        return train;
    }

    public void setTrain(String train) {
        this.train = train;
    }

    public String getJob_intention() {
        return job_intention;
    }

    public void setJob_intention(String job_intention) {
        this.job_intention = job_intention;
    }

    public String getAdditional() {
        return additional;
    }

    public void setAdditional(String additional) {
        this.additional = additional;
    }

    public String getIt() {
        return it;
    }

    public void setIt(String it) {
        this.it = it;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    @Override
    public String toString() {
        return "Resume{" +
                "id=" + id +
                ", sex='" + sex + '\'' +
                ", birthday='" + birthday + '\'' +
                ", college='" + college + '\'' +
                ", s_native='" + s_native + '\'' +
                ", idcard=" + idcard +
                ", salary='" + salary + '\'' +
                ", address='" + address + '\'' +
                ", major='" + major + '\'' +
                ", internship='" + internship + '\'' +
                ", education='" + education + '\'' +
                ", train='" + train + '\'' +
                ", job_intention='" + job_intention + '\'' +
                ", additional='" + additional + '\'' +
                ", it='" + it + '\'' +
                ", experience='" + experience + '\'' +
                ", sid=" + sid +
                '}';
    }
}
