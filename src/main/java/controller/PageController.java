package controller;

import dao.base.BaseDao;
import framework.HTTP;
import framework.SysConfig;
import model.Students;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Created by Willow on 12/16/16.
 */
@Controller
@Configuration
public class PageController {
    private BaseDao<Students> studentsDao;

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public String goIndex(HTTP http, ModelMap context) {
        return goHome(http, context);
    }

    @RequestMapping("/community")
    public String goCommunity(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "community";
    }

    @RequestMapping("/home")
    public String goHome(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "home";
    }

    @RequestMapping("/courseIntrod")
    public String goCourseIntrod(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "courseIntrod";
    }

    @RequestMapping("/evaluation")
    public String goEvaluation(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "evaluation";
    }

    @RequestMapping("/knowledge")
    public String goKnowledge(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "knowledge";
    }

    @RequestMapping("/login")
    public String goLogin(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "login";
    }

    @RequestMapping("/onDemand")
    public String goOnDemand(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "onDemand";
    }

    @RequestMapping("/practiceTeaching")
    public String goPracticeTeaching(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "practiceTeaching";
    }

    @RequestMapping("/reg")
    public String goReg(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "reg";
    }

    @RequestMapping("/teacher")
    public String goTeacher(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "teacher";
    }

    @RequestMapping("/teacLogin")
    public String goTeacLogin(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "teacLogin";
    }

}
