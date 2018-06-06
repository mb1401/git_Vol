package tpVol.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vol.model.Login;
import vol.repository.LoginDao;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	private LoginDao loginDao;
	
	@GetMapping("/")
	public String home() {
		return "forward:connexion";
	}
	
	@GetMapping("/connexion")
	public String connexion(Model model) {
		
		model.addAttribute("login", new Login());

		return "/login/connexion";
	}
	
	@PostMapping("/submit")
	public String submit(@ModelAttribute("login") Login login, Model model) {
		
//		System.out.println(login.getLogin()+" "+login.getMotDePasse());
		Login found = loginDao.findByLogin(login.getLogin());
		if(found!=null) {
			if(found.getLogin().equals(login.getLogin()) && found.getMotDePasse().equals(login.getMotDePasse()))
			return "/login/success";
		}
		
		return "/login/connexion";
	}

}
