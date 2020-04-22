package cn.liren.domain;

import java.util.Date;

public class Apply {
    private Integer id;
    private Integer sid;
    private Integer jid;
    private Integer eid;
    private String status;
    private Date date;
    private Integer rid;

    public Apply() {
    }

    public Apply(Integer id, Integer sid, Integer jid, Integer eid, String status, Date date, Integer rid) {
        this.id = id;
        this.sid = sid;
        this.jid = jid;
        this.eid = eid;
        this.status = status;
        this.date = date;
        this.rid = rid;
    }

    @Override
    public String toString() {
        return "Apply{" +
                "id=" + id +
                ", sid=" + sid +
                ", jid=" + jid +
                ", eid=" + eid +
                ", status='" + status + '\'' +
                ", date=" + date +
                ", rid=" + rid +
                '}';
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public Integer getJid() {
        return jid;
    }

    public void setJid(Integer jid) {
        this.jid = jid;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }



    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }
}
