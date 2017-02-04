package dao.base;

import model.Comment;
import model.McQuestion;
import org.springframework.data.repository.CrudRepository;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Created by Willow on 16/11/22.
 */
public interface BaseDao<T> extends CrudRepository<T, Integer> {
    /**
     * 根据模型字段查询对象：字段实参是一个实例
     * @param field
     * @param value
     * @return 单个对象
     */
    T findByField(String field, Object value);

    /**
     * 找到所有匹配的记录
     * @return
     */
    List<T> findAll();

    /**
     * 根据模型字段查找对象：字段实参是一个集合
     * @return
     */
    List<T> findInField(String field, Collection collection);

    /**
     * 根据模型字段查询对象：字段实参是一个实例
     * @param field
     * @param value
     * @return 集合对象
     */
    List<T> findListByField(String field, Object value);
}
