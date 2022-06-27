package springproject.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import springproject.Dao.userDao;
import springproject.Model.User;

@Controller
public class HomeController {
	@Autowired
	private userDao userdao;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<User> user= userdao.getUsers();
		m.addAttribute("user", user);
		return "index";
	}
	
	@RequestMapping("/add-user")
	public String addUser(Model m) {
		m.addAttribute("title", "AddUser");
		
		return "add-user-form";
	}
	
	//handle add user
	@RequestMapping(value="/Registration",method=RequestMethod.POST)
	public RedirectView handleUser(@ModelAttribute User user,HttpServletRequest request) {
		System.out.println(user);
		userdao.createUser(user);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	// delete handler
	@RequestMapping("/delete/{id}")
	public RedirectView deleteUser(@PathVariable("id") int id,HttpServletRequest request) {
	    this.userdao.deleteUser(id);
		RedirectView redirectView =new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	//update
	@RequestMapping("/update/{id}") 
	public String updateUser(@PathVariable("id") int id,Model model) {
		User user=this.userdao.getUser(id);
		model.addAttribute("user", user);
		return "update";
	}
	
	@RequestMapping("/login")
	public String addLogin(Model m) {
		m.addAttribute("title", "login");
		
		return "login";
	}
	
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public RedirectView validateUsr(@ModelAttribute User user, @RequestParam String email, @RequestParam String password,HttpServletRequest request) {
		 this.userdao.loginUser(email, password);
		 RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		 
	    }
}
