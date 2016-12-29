package controller;

import dao.StudentsDao;
import dto.AjaxResult;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import util.ExcelUtil;
import util.LoggerUtil;
import util.StringUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 不要被名字迷惑，这并不是一个彻底的restful的接口控制器
 * Created by Willow on 16/11/13.
 */
//写这段代码的时候，只有上帝和我知道它是干嘛的
//现在，只有上帝知道
@RestController
@Configuration
public class RestfulController {
    private StudentsDao studentsDao;

    //测试实时修改jvm参数
    @RequestMapping(value = "/putJvmArgument", method = RequestMethod.GET)
    public String putJvmArgument(@RequestParam(value = "argument", defaultValue = "") String argument, @RequestParam(value = "value") String value) {
        if (StringUtil.isEmpty(argument))
            return "argument is null , change failed!";

        String valueOfOldJvm = System.getProperty(argument);
        if (StringUtil.isEmpty(valueOfOldJvm)) {
            System.setProperty(argument, value);
            new Thread() {
                @Override
                public void run() {
                    super.run();
                    String tmpValue;
                    do {
                        tmpValue = System.getProperty(argument);
                        //实时打印jvm参数值
                        LoggerUtil.println(tmpValue);
                        //打印一次 挂起1秒
                        try {
                            sleep(1000);
                        } catch (InterruptedException e) {
                            LoggerUtil.error("sleep error", e);
                        }
                    } while (!StringUtil.isEmpty(tmpValue));
                }
            }.start();
            return "argument is unset . this is first time to run,set the " + argument + " argument";
        }
        System.setProperty(argument, value);
        return "change jvm argument " + argument + " value equals " + value + "  success";
    }

    //返回指定视图
    @RequestMapping("/index")
    public ModelAndView index() {
        return new ModelAndView("index");
    }


    //测试解析Excel
    @RequestMapping("/resolveExcel")
    public AjaxResult doResolveExcel() {
        AjaxResult result = AjaxResult.newInstance();
        String path = "/Users/Willow/Documents/test.xls";
        try {
            List<List<String>> contentList = ExcelUtil.readExcelFile(path, 2);
            result.setData(contentList);
        } catch (IOException e) {
            result.setMsg("解析失败");
            result.setSuccess(false);
        }
        return result;
    }

    //日志测试接口
    @RequestMapping("/getLog")
    public AjaxResult testLog() throws Exception {
        AjaxResult result = AjaxResult.newInstance();

        LoggerUtil.info("this is a log");
        if (true) {
            int a = 1/0;
            throw new Exception();
        }
        return result;
    }

    @RequestMapping("/test404")
    public ModelAndView test404(HttpServletRequest
                                            httpServletRequest, HttpServletResponse httpServletResponse) throws IOException {
        httpServletResponse.setStatus(404);
        return new ModelAndView("404");
    }

}
