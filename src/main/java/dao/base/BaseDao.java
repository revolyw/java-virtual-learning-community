package dao.base;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by Willow on 16/11/22.
 */
public interface BaseDao<T> extends CrudRepository<T, Integer> {
    /**
     * 根据模型字段查询对象
     * @param field
     * @param value
     * @return
     */
    T findByField(String field, Object value);

    /**
     * 找到所有匹配的记录
     * @return
     */
    List<T> findAll();
}
