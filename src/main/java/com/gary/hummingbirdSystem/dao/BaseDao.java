package com.gary.hummingbirdSystem.dao;

import java.util.List;

/**
 * DAO基类
 * 
 * @author Gary
 *
 * @param <T>
 */

public interface BaseDao<T> {
	/**
	 * 获取单条数据
	 * 
	 * @param id
	 * @return
	 */
	public T get(int id);

	/**
	 * 查询数据列表，如果需要分页，请设置分页对象，如：entity.setPage(new Page<T>());
	 * 
	 * @param entity
	 * @return
	 */
	public List<T> findList(T entity);

	/**
	 * 查询所有数据列表
	 * 
	 * @param entity
	 * @return
	 */
	public List<T> findAllList(T entity);

	/**
	 * 查询所有数据列表
	 * 
	 * @see public List<T> findAllList(T entity)
	 * @return
	 */

	public List<T> findAllList();

	/**
	 * 插入数据
	 * 
	 * @param entity
	 * @return
	 */
	public int insert(T entity);

	/**
	 * 更新数据
	 * 
	 * @param entity
	 * @return
	 */
	public int update(T entity);

	/**
	 * 删除数据
	 * 
	 * @param id
	 * @see public int delete(T entity)
	 * @return
	 */
	public int delete(int id);

}
