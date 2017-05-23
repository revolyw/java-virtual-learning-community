package framework;

import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import util.LoggerUtil;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Properties;

/**
 * 动态配置数据源信息
 * Created by Willow on 5/24/17.
 */
public class ConfigurationCenterHolder extends PropertyPlaceholderConfigurer {
    private static final String JDBC_URL = "jdbc_url";
    private static final String PROJECT = "project";

    @Override
    protected void processProperties(ConfigurableListableBeanFactory beanFactoryToProcess, Properties props) throws BeansException {
        try {
            String jdbcUrl = props.getProperty(JDBC_URL);
            String project = props.getProperty(PROJECT);
            String cipher = initCipher(project);
            String urlStr = jdbcUrl + "?cipher=" + URLEncoder.encode(cipher, "UTF-8") + "&project=" + project;
            URL url = new URL(urlStr);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setReadTimeout(3000);
            conn.setConnectTimeout(2000);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "text/plain");
            conn.setUseCaches(false);
            conn.setDoOutput(true);
            InputStream is = conn.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            StringBuilder sb = new StringBuilder();
            String str;
            while ((str = br.readLine()) != null) {
                sb.append(str);
            }
            JSONObject json = JSONObject.parseObject(sb.toString());
            props.setProperty("jdbc_url", json.isEmpty() ? "" : (String) json.get("jdbc_url"));
            props.setProperty("jdbc_user", json.isEmpty() ? "" : (String) json.get("jdbc_user"));
            props.setProperty("jdbc_password", json.isEmpty() ? "" : (String) json.get("jdbc_password"));
            LoggerUtil.info("init db success");

        } catch (Exception e) {
            LoggerUtil.error("init cipher error", e);
        }
        super.processProperties(beanFactoryToProcess, props);
    }

    private String initCipher(String project) throws IOException {
        String cipherFile = (SysConfig.DEV ? "/Users/." : "/home/.") + project;
        BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(new File(cipherFile)), "utf-8"));
        String line;
        while ((line = reader.readLine()) != null) {
            if (line.trim().length() == 0)
                continue;

            String cipher = line.trim().replaceAll("\\s+", " ");
            return cipher;
        }
        reader.close();
        return "";
    }
}
