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
@Table(name = "theme")
public class Theme extends BaseModel implements Serializable {
    private static final long serialVersionUID = -561607639011109640L;
    @Id
    private int id;
    private String title;
    private String content;
    @Column(name = "u_id")
    private String uId;
    @Column(name = "hot_index")
    private String hotIndex;
    private Date time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getuId() {
        return uId;
    }

    public void setuId(String uId) {
        this.uId = uId;
    }

    public String getHotIndex() {
        return hotIndex;
    }

    public void setHotIndex(String hotIndex) {
        this.hotIndex = hotIndex;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
