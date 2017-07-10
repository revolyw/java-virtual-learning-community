package framework;

import util.StringUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Willow on 1/2/17.
 */
public class HTTP {
    private HttpServletRequest req;
    private HttpServletResponse rep;

    public HTTP(HttpServletRequest req, HttpServletResponse rep) {
        this.req = req;
        this.rep = rep;
    }

    public HttpSession getSession() {
        return this.req.getSession();
    }


    public String getString(String key, String defaultValue) {
        String value = req.getParameter(key);
        if (StringUtil.isEmpty(value))
            return defaultValue;
        return value;
    }

    public int getInt(String key, int defaultValue) {
        String value = req.getParameter(key);
        if (StringUtil.isEmpty(value))
            return defaultValue;
        if (!StringUtil.isNumberic(value))
            return defaultValue;
        return Integer.valueOf(value);
    }

    public boolean getBoolean(String key, boolean defaultValue) {
        String value = req.getParameter(key);
        if (StringUtil.isEmpty(value))
            return defaultValue;
        if (value.equals("false") || value.equals("true")) {
            return Boolean.valueOf(value);
        } else {
            return defaultValue;
        }
    }
}
