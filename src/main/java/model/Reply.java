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
@Table(name = "reply")
public class Reply extends BaseModel implements Serializable {
    private static final long serialVersionUID = -2869095790714399508L;
    @Id
    private int id;
    @Column(name = "comment_id")
    private int commentId;
    @Column(name = "from_uid")
    private int fromUId;
    @Column(name = "to_uid")
    private int toUId;
    private String Content;
    private Date time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getFromUId() {
        return fromUId;
    }

    public void setFromUId(int fromUId) {
        this.fromUId = fromUId;
    }

    public int getToUId() {
        return toUId;
    }

    public void setToUId(int toUId) {
        this.toUId = toUId;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
