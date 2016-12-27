package controller;

import dao.StudentsDao;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;


/**
 * Created by Willow on 12/16/16.
 */
@Controller
@Configuration
public class PageController {

    private StudentsDao studentsDao;
}
