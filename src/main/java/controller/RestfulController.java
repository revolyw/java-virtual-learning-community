package controller;

import antlr.debug.MessageAdapter;
import dao.base.BaseDao;
import framework.HTTP;
import framework.SysConfig;
import model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.ModelMap;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import util.LoggerUtil;
import util.StringUtil;

import java.util.ArrayList;
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
    @Autowired
    private BaseDao<McQuestion> mcQuestionDao;
    @Autowired
    private BaseDao<FiQuestion> fiQuestionDao;
    @Autowired
    private BaseDao<Practice> practiceDao;
    @Autowired
    private BaseDao<Theme> themeDao;
    @Autowired
    private BaseDao<Comment> commentDao;
    @Autowired
    private BaseDao<Reply> replyDao;
    @Autowired
    private BaseDao<Message> messageDao;

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
    @RequestMapping("/getTeachers")
    public List<Teachers> getTeachers(HTTP http, ModelMap context) {
        List<Teachers> teachers = teachersDao.findAll();
        return teachers;
    }

    //获取给教师的留言
    @RequestMapping("/getMessages")
    public List<List<Message>> getMessages(HTTP http, ModelMap context) {
        int pageSize = http.getInt("pageSize", 5);
        int teachId = http.getInt("teachId", 0);
        List<Message> messages = messageDao.findListByField("teacId", teachId+"");
        if (CollectionUtils.isEmpty(messages)) {
            return null;
        }
        int i = 1;
        List<List<Message>> messageMatrix = new ArrayList<>();
        List<Message> oneLineMassages = new ArrayList<>();
        for (Message message : messages) {
            oneLineMassages.add(message);
            if (i++ % pageSize == 0) {
                messageMatrix.add(oneLineMassages);
                oneLineMassages = new ArrayList<>();
            }
        }
        if (!CollectionUtils.isEmpty(oneLineMassages)) {
            messageMatrix.add(oneLineMassages);
        }
        return messageMatrix;
    }

    //获取试题
    @RequestMapping("/getTests")
    public List<QuestionCatalogue> getTests(HTTP http, ModelMap context) {
        List<QuestionCatalogue> questionCatalogues = questionCatalogueDao.findAll();
        return questionCatalogues;
    }

    //获取一个章节的试题
    @RequestMapping("/getOneTest")
    public List<Object> getOneTest(HTTP http, ModelMap context) {
        String sectionId = http.getString("sectionId", "");
        List<RelationshipForQuestion> relationshipForQuestions = relationshipForQuestionDao.findAll();
        List<Integer> mcQuestionIds = new ArrayList<>();
        List<Integer> fiQuestionIds = new ArrayList<>();
        for (RelationshipForQuestion relationshipForQuestion : relationshipForQuestions) {
            if (!relationshipForQuestion.getSectionId().equals(sectionId))
                continue;
            String qtype = relationshipForQuestion.getQtype();
            Integer qId = Integer.valueOf(relationshipForQuestion.getqId());
            switch (qtype) {
                case "xuanze":
                    mcQuestionIds.add(qId);
                    break;
                case "tiankong":
                    fiQuestionIds.add(qId);
                    break;
                default:
                    break;
            }
        }
        List<McQuestion> mcQuestions = mcQuestionDao.findInField("id", mcQuestionIds);
        List<FiQuestion> fiQuestions = fiQuestionDao.findInField("id", fiQuestionIds);
        List<Object> result = new ArrayList<>();
        result.add(mcQuestions);
        result.add(fiQuestions);
        return result;
    }

    //获取教学实验数据
    @RequestMapping("/getPractices")
    public List<List<Practice>> getPractices(HTTP http) {
        int pageSize = http.getInt("pageSize", 6);
        List<Practice> practices = practiceDao.findAll();
        List<List<Practice>> result = new ArrayList<>();
        int i = 0;
        List<Practice> onePagePractices = null;
        for (Practice practice : practices) {
            if (i % pageSize == 0) {
                onePagePractices = new ArrayList<>();
                result.add(onePagePractices);
            }
            if (null != onePagePractices)
                onePagePractices.add(practice);
            i++;
        }
        return result;
    }

    //获取所有的帖子
    @RequestMapping("/getThemes")
    public List<List<Theme>> getThemes(HTTP http) {
        int pageSize = http.getInt("pageSize", 6);
        List<Theme> themes = themeDao.findAll();
        List<List<Theme>> result = new ArrayList<>();
        int i = 0;
        List<Theme> onepageThemes = null;
        for (Theme theme : themes) {
            if (i % pageSize == 0) {
                onepageThemes = new ArrayList<>();
                result.add(onepageThemes);
            }
            if (null != onepageThemes)
                onepageThemes.add(theme);
            i++;
        }
        return result;
    }

    //获取单个帖子及其评论
    @RequestMapping("/getOneTheme")
    public List<Object> getOneTheme(HTTP http) {
        int themeId = http.getInt("themeId", 0);
        int pageSize = http.getInt("pageSize", 4);
        List<Object> result = new ArrayList<>();
        Theme theme = themeDao.findByField("id", themeId);
        result.add(theme);
        List<List<Comment>> commentsList = new ArrayList<>();
        List<Comment> comments = commentDao.findListByField("themeId", themeId);
        List<Comment> onePageComments = null;
        int i = 0;
        for (Comment comment : comments) {
            if (i++ % pageSize == 0) {
                onePageComments = new ArrayList<>();
                commentsList.add(onePageComments);
            }
            if (null != onePageComments)
                onePageComments.add(comment);
            i++;
        }
        result.add(commentsList);
        return result;
    }

    //获取所有回复
    @RequestMapping("/getReplys")
    public List<Object> getReplys(HTTP http) {
        int commentId = http.getInt("commentId", 0);
        int pageSize = http.getInt("pageSize", 3);

        List<Object> result = new ArrayList<>();
        List<Reply> replies = replyDao.findListByField("commentId", commentId);
        if (null == replies)
            return result;
        List<Reply> onePageReplies = null;
        int i = 0;
        for (Reply reply : replies) {
            if (i++ % pageSize == 0) {
                onePageReplies = new ArrayList<>();
                result.add(onePageReplies);
            }
            if (null != onePageReplies)
                onePageReplies.add(reply);
        }
        return result;
    }
}
