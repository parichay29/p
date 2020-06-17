package com.miniguru.spring.doa;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.miniguru.spring.entity.Homepage;

@Repository
@Transactional
public class contentDoaImpl implements contentDoa{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Homepage> getHomePage() {
		Session currentSesion =sessionFactory.getCurrentSession();
		
		Query<Homepage> query =  
				currentSesion.createQuery("from Homepage",Homepage.class);
		
		List<Homepage> homepages = query.getResultList();
		return homepages;
	}


}
