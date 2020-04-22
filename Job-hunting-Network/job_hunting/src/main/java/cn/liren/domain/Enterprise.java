package cn.liren.domain;

public class Enterprise {
    private Integer id;
    private String loginName;
    private String password;
    private String ent_name;
    private String phone;
    private String manager;//单位法人
    private String email;
    private String address;

    public Enterprise() {
    }

    public Enterprise(Integer id, String loginName, String password, String ent_name, String phone, String manager, String email, String address) {
        this.id = id;
        this.loginName = loginName;
        this.password = password;
        this.ent_name = ent_name;
        this.phone = phone;
        this.manager = manager;
        this.email = email;
        this.address = address;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEnt_name() {
        return ent_name;
    }

    public void setEnt_name(String ent_name) {
        this.ent_name = ent_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Enterprise{" +
                "id=" + id +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                ", ent_name='" + ent_name + '\'' +
                ", phone='" + phone + '\'' +
                ", manager='" + manager + '\'' +
                ", email='" + email + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
