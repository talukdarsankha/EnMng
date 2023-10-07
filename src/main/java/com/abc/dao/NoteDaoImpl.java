package com.abc.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.abc.entity.Notes;
import com.abc.entity.User;

@Repository
public class NoteDaoImpl implements NotesDao {

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	@Transactional
	public int saveNote(Notes nn) {
		int i= (int) ht.save(nn);
		return i;
	}

	@Override
	public List<Notes> getAllByUser(User us) {
		String sql = "from Notes Where us=:uob";
		List<Notes> ll= ht.execute(s->{
			org.hibernate.query.Query q= s.createQuery(sql);
			q.setEntity("uob", us);
			return q.getResultList();
		});
		
		return ll;
	}

	@Override
	public Notes getByID(int id) {
		Notes nn= ht.get(Notes.class, id);
		return nn;
	}

	@Override
	@Transactional
	public void updateNotes(Notes nt) {
		ht.update(nt);
		
	}

	@Override
	@Transactional
	public void deleteNotes(int id) {
		Notes ns= ht.get(Notes.class, id);
		ht.delete(ns);
		
	}

}
