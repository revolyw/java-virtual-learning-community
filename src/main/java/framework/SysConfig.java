package framework;

import util.LoggerUtil;

/**
 * 系统初始化配置
 * Created by Willow on 16/11/17.
 */
public class SysConfig {
    public static boolean DEV = false;
    public static String HOST;
    public static String WECHAT_APP_ID;
    public static String WECHAT_APP_SECRET;

    static {
        DEV = "dev".equals(System.getProperty("environment"));
        HOST = DEV ? "https://java.willowspace.net" : "https://java.willowspace.cn";
    }

    public void init() {
        LoggerUtil.info("initialize Sysconfig success!");
    }
}
