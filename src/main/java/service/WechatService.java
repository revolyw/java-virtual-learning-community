package service;

import org.apache.commons.codec.digest.DigestUtils;
import util.LoggerUtil;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/**
 * 微信公众号服务
 * Created by Willow on 7/10/17.
 */
public class WechatService {
    private static final String TOKEN = "weixin";

    public static boolean validateSignature(String signature, String timestamp, String nonce) {
        List<String> parameters = new ArrayList<>();
        parameters.add(TOKEN);
        parameters.add(timestamp);
        parameters.add(nonce);
        //字典序排序
        Collections.sort(parameters);
        String generatedSignature = DigestUtils.shaHex(parameters.get(0) + parameters.get(1) + parameters.get(2));
        LoggerUtil.info("generate signature is " + generatedSignature + " the right signature is " + signature + " the compare is " + Objects.equals(generatedSignature, signature));
        return Objects.equals(generatedSignature, signature);
    }
}
