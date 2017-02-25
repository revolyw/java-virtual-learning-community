package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Willow on 12/29/16.
 */
@Entity
@Table(name = "video")
public class Video extends BaseModel {
    @Id
    private int id;
    private String level;
    @Column(name = "super_level")
    private String superLevel;
    @Column(name = "sub_num")
    private String subNum;
    private String number;
    @Column(name = "video_name")
    private String videoName;
    private String description;
    @Column(name = "link_url")
    private String linkUrl;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getSuperLevel() {
        return superLevel;
    }

    public void setSuperLevel(String superLevel) {
        this.superLevel = superLevel;
    }

    public String getSubNum() {
        return subNum;
    }

    public void setSubNum(String subNum) {
        this.subNum = subNum;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }
}
