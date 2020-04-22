package cn.liren.domain;

import java.util.List;

public class Industry {
    private Integer id;
    private String i_name;
    private List<Job> list;

    public Industry() {
    }

    public Industry(Integer id, String i_name, List<Job> list) {
        this.id = id;
        this.i_name = i_name;
        this.list = list;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getI_name() {
        return i_name;
    }

    public void setI_name(String i_name) {
        this.i_name = i_name;
    }

    public List<Job> getList() {
        return list;
    }

    public void setList(List<Job> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Industry{" +
                "id=" + id +
                ", i_name='" + i_name + '\'' +
                ", list=" + list +
                '}';
    }
}
