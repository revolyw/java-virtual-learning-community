package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Willow on 12/29/16.
 */
@Entity
@Table(name = "fiquestion")
public class FiQuestion  extends BaseModel{
    @Id
    private int id;
    private String content;
    private String answerNum;
    private String answer;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAnswerNum() {
        return answerNum;
    }

    public void setAnswerNum(String answerNum) {
        this.answerNum = answerNum;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
}
