package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by Willow on 12/29/16.
 */
@Entity
@Table(name = "message")
public class Message extends BaseModel{
    @Id
    private int id;
    @Column(name = "stu_id")
    private String stuId;
    @Column(name = "teac_id")
    private String teacId;
    private String type;
    private String content;
    private Date uploadTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getTeacId() {
        return teacId;
    }

    public void setTeacId(String teacId) {
        this.teacId = teacId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }
}
