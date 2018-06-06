package tpVol.web;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vol.model.Aeroport;
import vol.model.Vol;
import vol.repository.AeroportDao;
import vol.repository.VolDao;

@Controller
@RequestMapping("/vol")
public class VolController {
	@Autowired
	private VolDao volDao;
	@Autowired
	private AeroportDao aeroportDao;
		
	@GetMapping("/list")
	public String list(Model model) {
		List<Vol> listeVol = volDao.findAllWithVol();
		
		

		model.addAttribute("vols", listeVol);
		
		

		return "/vol/list";
	}

	@GetMapping("/add")
	public ModelAndView add(Model model) {
		List<Aeroport> listeAeroport = aeroportDao.findAll();
		System.out.println(listeAeroport.toString());
		model.addAttribute("aeroports", listeAeroport);
		return new ModelAndView("/vol/edit", "vol", new Vol());
	}

	@GetMapping("/edit")
	public String edit(@RequestParam Long id, Model model) {
		List<Aeroport> listeAeroport = aeroportDao.findAll();
		System.out.println(listeAeroport.toString());
		model.addAttribute("aeroports", listeAeroport);
		Optional<Vol> vol = volDao.findById(id);

		if (vol.isPresent()) {
			model.addAttribute("vol", vol.get());
		} else {
			model.addAttribute("vol", new Vol());
		}

		return "/vol/edit";
	}

	@PostMapping("/save")
	public String save(@Valid @ModelAttribute("vol") Vol vol, BindingResult result) {
		if(result.hasErrors()) {
			System.out.println("Le vol n'a pas �t� valid�");
			
			return "/vol/edit";
		}
		volDao.save(vol);

		return "redirect:list";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam Long id) {

		volDao.deleteById(id);

		return "forward:list";
	}

	@GetMapping("/cancel")
	public String cancel() {
		return "forward:list";
	}
}
