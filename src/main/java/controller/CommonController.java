package controller;

import framework.ConfigurationCenterHolder;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 基础接口
 * Created by Willow on 7/8/17.
 */
@RestController("/")
@Configuration
public class CommonController {
    @RequestMapping("/health")
    public String healthCheck() {
        if (!ConfigurationCenterHolder.checkWechatInitialization()) {
            return "failure cause of wechat initialization";
        }
        return "ok";
    }
}
