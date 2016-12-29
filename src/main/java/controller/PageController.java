package controller;

import dao.StudentsDao;
import framework.HTTP;
import framework.SysConfig;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by Willow on 12/16/16.
 */
@Controller
@Configuration
public class PageController {
    private StudentsDao studentsDao;

    @RequestMapping("/community")
    public String goCommunity(HTTP HTTP, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "community";
    }

    @RequestMapping("/home")
    public String goHome(HTTP HTTP, ModelMap context) {
        context.put("host", SysConfig.HOST);
        return "home";
    }
}
