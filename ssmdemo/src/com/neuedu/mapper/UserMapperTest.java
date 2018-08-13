package com.neuedu.mapper;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.neuedu.pojo.User;

public class UserMapperTest {

	@Test
	public void findById() throws IOException{
		InputStream inputStream=Resources.getResourceAsStream("config/SqlMapConfig.xml");
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session=sqlSessionFactory.openSession();
		User user=session.selectOne("findById", 2);
		System.out.println(user.getUsername());
		session.close();
	}
	@Test
	public void findByName() throws IOException{
		InputStream inputStream=Resources.getResourceAsStream("config/SqlMapConfig.xml");
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session=sqlSessionFactory.openSession();
		List<User> user=session.selectList("findByName", '吕');
		for(User u:user){
			System.out.println(u.getId());
		}
		session.close();
	}
	@Test
	public void deleteUser() throws IOException{
		InputStream inputStream=Resources.getResourceAsStream("config/SqlMapConfig.xml");
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session=sqlSessionFactory.openSession();
		User user=session.selectOne("deleteUser", 1);
		session.commit();
		session.close();
	}
	@Test
	public void insertUser() throws IOException{
		InputStream inputStream=Resources.getResourceAsStream("config/SqlMapConfig.xml");
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session=sqlSessionFactory.openSession();
		User user=new User();
		user.setId(1);
		user.setUsername("胡佳成");
		user.setPassword("111111");
		user.setSex("中性");
		session.insert("insertUser", user);
		session.commit();
		session.close();
	}
	@Test
	public void updateUser() throws IOException{
		InputStream inputStream=Resources.getResourceAsStream("config/SqlMapConfig.xml");
		SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
		SqlSession session=sqlSessionFactory.openSession();
		User user=session.selectOne("findById", 1);
		user.setUsername("胡佳成");
		user.setPassword("123456");
		user.setSex("女");
		session.update("updateUser", user);
		session.commit();
		session.close();
	}
}
