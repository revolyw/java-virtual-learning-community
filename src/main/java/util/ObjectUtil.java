package util;


import org.apache.commons.beanutils.BeanUtils;
import org.springframework.util.ObjectUtils;

/**
 * 一般对象 通用工具
 * Created by Willow on 12/4/16.
 */
public class ObjectUtil {
    //泛型深拷贝对象
    public static <T extends Object> T copy(T obj) {
        Class<?> cls = obj.getClass();
        try {
            Object newObj = cls.newInstance();
            BeanUtils.copyProperties(newObj, obj);
            return (T) newObj;
        } catch (Exception e) {
            LoggerUtil.error("copy vo error!", e);
        }
        return null;
    }
    public static boolean isEmpty(Object o) {
        return ObjectUtils.isEmpty(o);
    }
}
