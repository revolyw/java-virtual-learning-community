package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Willow on 12/29/16.
 */
@Entity
@Table(name = "comment")
public class Comment extends BaseModel implements Serializable {
    private static final long serialVersionUID = -8549169492711423732L;
    @Id
    private int id;
    @Column(name = "theme_id")
    private int themeId;
    @Column(name = "u_id")
    private String uId;
    private String content;
    @Column(name = "reply_num")
    private int replyNum;
    private Date time;

    public int getId() {
        return id;
    }

    public int getThemeId() {
        return themeId;
    }

    public void setThemeId(int themeId) {
        this.themeId = themeId;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getReplyNum() {
        return replyNum;
    }

    public void setReplyNum(int replyNum) {
        this.replyNum = replyNum;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
