package com.neuedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neuedu.pojo.User;

public interface UserMapper {
	/**
	 * 通过id查找用户信息
	 * @param id 主键id
	 * @return
	 */
	public User findById(Integer id);
	public List<User> findByName(@Param("value") String username);
	public int updateUser(User user);
	public int insertUser(User user);
	public User deleteUser(int id);
}
