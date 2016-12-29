package controller;

import dao.StudentsDao;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


/**
 * Created by Willow on 12/16/16.
 */
@Controller
@Configuration
public class PageController {
    private StudentsDao studentsDao;
    @RequestMapping("/community")
    public ModelAndView goCommunity(HttpServletRequest req){
        ModelAndView mv = new ModelAndView("community");
        mv.addObject("host", "http://willowspace.net");
        return mv;
    }
}
