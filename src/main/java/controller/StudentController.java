package controller;

import framework.HTTP;
import framework.SysConfig;
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
public class StudentController {
    private static final String TEMPLATE_PREFIX = "student";

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public String goIndex(HTTP http, ModelMap context) {
        return goHome(http, context);
    }

    @RequestMapping("/community")
    public String goCommunity(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/community";
    }

    @RequestMapping("/home")
    public String goHome(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/home";
    }

    @RequestMapping("/courseIntrod")
    public String goCourseIntrod(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/courseIntrod";
    }

    @RequestMapping("/evaluation")
    public String goEvaluation(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/evaluation";
    }

    //知识管理
    @RequestMapping("/knowledge")
    public String goKnowledge(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/knowledge";
    }

    //微课点播
    @RequestMapping("/onDemand")
    public String goOnDemand(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/onDemand";
    }

    //实验教学
    @RequestMapping("/practiceTeaching")
    public String goPracticeTeaching(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/practiceTeaching";
    }

    @RequestMapping("/reg")
    public String goReg(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/reg";
    }

    @RequestMapping("/login")
    public String goLogin(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/login";
    }
}
