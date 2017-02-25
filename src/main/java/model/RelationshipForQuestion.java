package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Willow on 12/29/16.
 */
@Entity
@Table(name = "relationshipforquestion")
public class RelationshipForQuestion extends BaseModel {
    @Id
    private int id;
    private String sectionId;
    private String qtype;
    private String qId;
    private String qNumber;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSectionId() {
        return sectionId;
    }

    public void setSectionId(String sectionId) {
        this.sectionId = sectionId;
    }

    public String getQtype() {
        return qtype;
    }

    public void setQtype(String qtype) {
        this.qtype = qtype;
    }

    public String getqId() {
        return qId;
    }

    public void setqId(String qId) {
        this.qId = qId;
    }

    public String getqNumber() {
        return qNumber;
    }

    public void setqNumber(String qNumber) {
        this.qNumber = qNumber;
    }
}
