package com.abc.dao;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.abc.entity.User;

@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	@Transactional
	public int saveUser(User us) {
		int i=(int) ht.save(us);
		return i;
	}

	@Override
	public User loginUser(String email, String password) {
		String sql= "from User where email=:em and password=:pw";
		 User uo= (User) ht.execute(s->{
			Query q= s.createQuery(sql);
			q.setString("em", email);
			q.setString("pw", password);
			return q.uniqueResult();
		});
		return uo;
	}

}
