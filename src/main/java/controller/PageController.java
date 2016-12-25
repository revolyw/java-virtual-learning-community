package controller;

import dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;


/**
 * Created by Willow on 12/16/16.
 */
@Controller
@Configuration
public class PageController {
    @Autowired
    private UserDao userDao;
}
