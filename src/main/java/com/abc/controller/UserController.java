package com.abc.controller;


import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abc.dao.NotesDao;
import com.abc.entity.Notes;
import com.abc.entity.User;



@Controller
@RequestMapping(path = "/user")
public class UserController {

	@Autowired
	private NotesDao nd;
	
	
	@RequestMapping("/addNote")
	public String addnote() {
		return "addnote";
	}
	@RequestMapping("/viewNote")
	public String viewnote(HttpSession hs,Model m) {
		User uo= (User) hs.getAttribute("userLog");
		List<Notes> ll= nd.getAllByUser(uo);
		m.addAttribute("notes", ll);
		return "viewnote";
	}
	@RequestMapping("/editNote/{id}")
	public String edit(@PathVariable(name = "id") int id,Model m) {
		
		Notes ns= nd.getByID(id);
		m.addAttribute("obj",ns);
		return "editnotes";
	}
	
	@RequestMapping(path = "/updateNote",method = RequestMethod.POST)
	public String updatenote(@ModelAttribute Notes nt,HttpSession hs) {
	    User ub= (User) hs.getAttribute("userLog");
	    nt.setUs(ub);
		nt.setSaveDate(LocalDateTime.now().toString());
		nd.updateNotes(nt);
		hs.setAttribute("succ", "Note Updated Successfully......");
		return "redirect:/user/viewNote";
	}
	
	
	
	
	@RequestMapping("/deleteNote/{id}")
	public String deleteNo(@PathVariable("id") int id) {
		nd.deleteNotes(id);
		return "redirect:/user/viewNote";
	}
	
	@RequestMapping(path = "/logout")
	public String logout(HttpServletRequest req) {
		HttpSession hs= req.getSession();
		hs.removeAttribute("userLog");
		hs.setAttribute("logout", "Your Account Logout Successfully.....");
		return "redirect:/home";
	}
	
	@RequestMapping(path = "/createNote" ,method = RequestMethod.POST)
	public String saveNote(@ModelAttribute Notes nt,HttpSession hs) {
		User ob= (User) hs.getAttribute("userLog");
		nt.setUs(ob);
		nt.setSaveDate(LocalDate.now().toString());
		nd.saveNote(nt);
		
		hs.setAttribute("suc", "Note Successfully Added.....");
		return "redirect:/user/addNote";
	}
	
	
}
