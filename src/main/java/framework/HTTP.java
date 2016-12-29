package framework;

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
}
