package com.neuedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neuedu.pojo.User;

public interface UserMapper {
	/**
	 * ͨ��id�����û���Ϣ
	 * @param id ����id
	 * @return
	 */
	public User findById(Integer id);
	public List<User> findByName(@Param("value") String username);
	public int updateUser(User user);
	public int insertUser(User user);
	public User deleteUser(int id);
}
