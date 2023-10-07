package com.abc.dao;

import java.util.List;

import com.abc.entity.Notes;
import com.abc.entity.User;

public interface NotesDao {

	public int saveNote(Notes nn);
	public List<Notes> getAllByUser(User us);
	public Notes getByID(int id);
	public void updateNotes(Notes nt);
	public void deleteNotes(int id);
}
