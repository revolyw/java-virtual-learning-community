package controller;

import framework.HTTP;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import service.WechatService;

/**
 * 微信服务接口
 * Created by Willow on 7/10/17.
 */
@RestController
@RequestMapping("/wechat")
public class WechatController {
    @RequestMapping("")
    public String init(HTTP http) {
        String echoStr = http.getString("echoStr", "");
        String signature = http.getString("signature", "");
        String timestamp = http.getString("timestamp", "");
        String nonce = http.getString("nonce", "");

        boolean validResult = WechatService.validateSignature(signature, timestamp, nonce);
        return validResult ? echoStr : "fail";
    }
}
