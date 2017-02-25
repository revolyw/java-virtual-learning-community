package controller;

import framework.HTTP;
import framework.SysConfig;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Willow on 2/25/17.
 */
@Controller
@Configuration
public class TeacherController {
    private static final String TEMPLATE_PREFIX = "teacher";

    //教师首页
    @RequestMapping("/teacher")
    public String goTeacher(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/teacher";
    }

    //教师登录页
    @RequestMapping("/teacLogin")
    public String goTeacLogin(HTTP http, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return TEMPLATE_PREFIX+"/teacLogin";
    }
}
