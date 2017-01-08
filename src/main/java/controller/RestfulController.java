package controller;

import dao.base.BaseDao;
import framework.HTTP;
import model.Knowledge;
import model.KnowledgeContent;
import model.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import util.StringUtil;

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
    private BaseDao<KnowledgeContent> knowledgeContentBaseDao;

    //获取知识目录
    @RequestMapping("/getKnowledgeTree")
    public List<Knowledge> getKnowledgeTree(HTTP http, ModelMap context) {
        List<Knowledge> knowledges = knowledgeDao.findAll();
        return knowledges;
    }

    //获取知识点内容
    @RequestMapping("/getKnowledgeContent")
    public KnowledgeContent getKnowledgeContent(@RequestParam(value = "content_id", defaultValue = "0") String contentId) {
        if (StringUtil.isEmpty(contentId) || !StringUtil.isNumberic(contentId))
            return null;
        int id = Integer.valueOf(contentId);
        KnowledgeContent knowledgeContent = knowledgeContentBaseDao.findByField("id", id);
        return knowledgeContent;
    }
}
