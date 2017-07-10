package controller;

import framework.HTTP;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import service.WechatService;
import util.LoggerUtil;

/**
 * 微信服务接口
 * Created by Willow on 7/10/17.
 */
@RestController
@RequestMapping("/wechat")
public class WechatController {
    @RequestMapping("")
    public String init(HTTP http) {
        String echoStr = http.getString("echostr", "");
        String signature = http.getString("signature", "");
        String timestamp = http.getString("timestamp", "");
        String nonce = http.getString("nonce", "");
        LoggerUtil.info("echostr is " + echoStr + "timestamp is " + timestamp + "nonce is " + nonce);
        boolean validResult = WechatService.validateSignature(signature, timestamp, nonce);
        String result = validResult ? echoStr : "fail";
        LoggerUtil.info("result is " + result);
        return result;
    }
}
