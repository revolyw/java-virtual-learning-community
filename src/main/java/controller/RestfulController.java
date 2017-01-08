package controller;

import dao.base.BaseDao;
import model.Knowledge;
import model.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    @RequestMapping("/getKnowledgeTree")
    public List<Knowledge> getKnowledgeTree() {
        Knowledge knowledge = knowledgeDao.findOne(1);
        List<Knowledge> knowledges = knowledgeDao.findAll();
        return knowledges;
    }
}
