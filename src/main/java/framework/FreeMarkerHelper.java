package framework;

import freemarker.template.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Willow on 2/25/17.
 */
@Component
public class FreeMarkerHelper {
    @Autowired
    private Configuration cfg;

}
