package cn.liren.domain;

import java.util.List;

public class College {
    private Integer id;
    private String c_name;
    private List<Job> list;

    public College() {
    }

    public College(Integer id, String c_name, List<Job> list) {
        this.id = id;
        this.c_name = c_name;
        this.list = list;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public List<Job> getList() {
        return list;
    }

    public void setList(List<Job> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "College{" +
                "id=" + id +
                ", c_name='" + c_name + '\'' +
                ", list=" + list +
                '}';
    }
}
