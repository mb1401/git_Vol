package tpVol.web;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.model.Passager;
import vol.repository.PassagerDao;

@Controller
@RequestMapping("/passager")
public class PassagerController {

	@Autowired
	private PassagerDao passagerDao;

	@GetMapping("/")
	public String home() {
		return "forward:list";
	}

	@GetMapping("/list")
	public String list(Model model) {
		List<Passager> liste = passagerDao.findAll();

		model.addAttribute("passagers", liste);

		return "/passager/list";
	}

	@GetMapping("/add")
	public ModelAndView add() {
		return new ModelAndView("/passager/edit", "passager", new Passager());
	}

	public String edit(@RequestParam Long id, Model model) {
		Optional<Passager> passager = passagerDao.findById(id);

		if (passager.isPresent()) {
			model.addAttribute("passager", passager.get());
		} else {
			model.addAttribute("passager", new Passager());
		}
		return "/passager/edit";
	}

	@PostMapping("/save")
	public String save(@ModelAttribute("Passager") Passager passager) {
		passagerDao.save(passager);
		return "redirect:list";

	}

	public String delete(@RequestParam Long id) {
		passagerDao.deleteById(id);
		return "forward:list";
	}

	@GetMapping("/cancel")
	public String cancel() {
		return "forward:list";
	}
	
	@GetMapping("/returnHome")
	public String returnHome() {
		return "/home/";
	}

}
