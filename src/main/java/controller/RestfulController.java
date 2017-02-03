package controller;

import dao.base.BaseDao;
import framework.HTTP;
import framework.SysConfig;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import util.StringUtil;

import javax.management.relation.Relation;
import java.util.List;

/**
 * 数据接口
 * Created by Willow on 16/11/13.
 */
@RestController
@Configuration
public class RestfulController {
    @Autowired
    private BaseDao<Students> studentsDao;
    @Autowired
    private BaseDao<Knowledge> knowledgeDao;
    @Autowired
    private BaseDao<Teachers> teachersDao;
    @Autowired
    private BaseDao<Video> videoDao;
    @Autowired
    private BaseDao<QuestionCatalogue> questionCatalogueDao;
    @Autowired
    private BaseDao<KnowledgeContent> knowledgeContentDao;
    @Autowired
    private BaseDao<RelationshipForQuestion> relationshipForQuestionDao;

    //获取知识目录
    @RequestMapping("/getKnowledgeTree")
    public List<Knowledge> getKnowledgeTree(HTTP http, ModelMap context) {
        List<Knowledge> knowledges = knowledgeDao.findAll();
        return knowledges;
    }

    //获取知识点内容
    @RequestMapping("/getKnowledgeContent")
    public KnowledgeContent getKnowledgeContent(@RequestParam(value = "content_id", defaultValue = "0") String contentId, HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        if (StringUtil.isEmpty(contentId) || !StringUtil.isNumberic(contentId))
            return null;
        int id = Integer.valueOf(contentId);
        KnowledgeContent knowledgeContent = knowledgeContentDao.findByField("id", id);
        return knowledgeContent;
    }

    //获取视频教学内容
    @RequestMapping("/getVideos")
    public List<Video> getVideos(HTTP http, ModelMap context) {
        List<Video> videos = videoDao.findAll();
        return videos;
    }

    //获取教师
    @RequestMapping("getTeachers")
    public List<Teachers> getTeachers(HTTP http, ModelMap context) {
        List<Teachers> teachers = teachersDao.findAll();
        return teachers;
    }

    //获取试题
    @RequestMapping("getTests")
    public List<QuestionCatalogue> getTests(HTTP http, ModelMap context) {
        List<QuestionCatalogue> questionCatalogues = questionCatalogueDao.findAll();
        return questionCatalogues;
    }

    //获取一个章节的试题
    @RequestMapping("getOneTest")
    public List<List<Object>> getOneTest(HTTP http, ModelMap context) {
        String sectionId = http.getString("sectionId", "");
        List<RelationshipForQuestion> relationshipForQuestions = relationshipForQuestionDao.findAll();

        return null;
    }
}
