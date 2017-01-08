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
@Table(name = "knowledge")
public class Knowledge implements Serializable {
    private static final long serialVersionUID = 6410906872525025722L;
    @Id
    private int id;
    private String level;
    @Column(name = "super_level")
    private String superLevel;
    @Column(name = "sub_num")
    private String subNum;
    private String number;
    private String description;
    private String content;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
