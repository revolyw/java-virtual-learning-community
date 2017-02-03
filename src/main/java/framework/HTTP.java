package framework;

import antlr.StringUtils;
import util.StringUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

    public String getString(String sectionId, String defaultValue) {
        String value = req.getParameter(sectionId);
        if (StringUtil.isEmpty(value))
            return defaultValue;
        return value;
    }
}
