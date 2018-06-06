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


import vol.repository.ClientDao;
import vol.model.Client;
import vol.model.ClientEI;
import vol.model.ClientMoral;
import vol.model.ClientPhysique;

@Controller
@RequestMapping("/client")
public class ClientController {

	@Autowired
	private ClientDao clientDao;

	@GetMapping("/")
	public String home() {
		return "forward:list";
	}

	@GetMapping("/list")
	public String list(Model model) {
		List<Client> liste = clientDao.findAll();

		model.addAttribute("clients", liste);

		return "/client/list";
	}

	@GetMapping("/addCP")
	public ModelAndView addCP() {
		return new ModelAndView("/client/editCP", "clientPhysique", new ClientPhysique());
	}
	@GetMapping("/addCM")
	public ModelAndView addCM() {
		return new ModelAndView("/client/editCM", "clientMoral", new ClientMoral());
	}
	@GetMapping("/addEI")
	public ModelAndView addEI() {
		return new ModelAndView("/client/editEI", "clientEI", new ClientEI());
	}


	@GetMapping("/editCP")
	public String editCP(@RequestParam Long id, Model model) {
		Optional<Client> clientPhysique = clientDao.findById(id);
		if (clientPhysique.isPresent()) {
			model.addAttribute("clientPhysique", clientPhysique.get());
		} else {
			model.addAttribute("clientPhysique", new ClientPhysique());
		}
		return "/client/editCP";
	}

	@GetMapping("/editCM")
	public String editCM(@RequestParam Long id, Model model) {
		Optional<Client> clientMoral = clientDao.findById(id);
		if (clientMoral.isPresent()) {
			model.addAttribute("clientMoral", clientMoral.get());
		} else {
			model.addAttribute("clientMoral", new ClientMoral());
		}
		return "/client/editCM";
	}

	@GetMapping("/editEI")
	public String editEI(@RequestParam Long id, Model model) {
		Optional<Client> clientEI = clientDao.findById(id);
		if (clientEI.isPresent()) {
			model.addAttribute("clientEI", clientEI.get());
		} else {
			model.addAttribute("clientEI", new ClientEI());
		}
		return "/client/editEI";
	}

	@PostMapping("/saveCP")
	public String saveCP(@Valid @ModelAttribute("clientPhysique") ClientPhysique clientPhysique, BindingResult result, Model model) {
		new ClientPhysiqueSubscribeValidator().validate(clientPhysique, result);

		if (result.hasErrors()) {
			System.out.println("Le client physique n'a pas été validé ...");
			return "/client/editCP";
			}

		clientDao.save(clientPhysique);
		return "redirect:list";
	}

	@PostMapping("/saveCM")
	public String saveCM(@Valid @ModelAttribute("clientMoral") ClientMoral clientMoral, BindingResult result, Model model) {
		new ClientMoralSubscribeValidator().validate(clientMoral, result);
		if (result.hasErrors()) {
			System.out.println("Le client moral n'a pas été validé ...");
			return "/client/editCM";
			}
		
		clientDao.save(clientMoral);
		return "redirect:list";
	}

	@PostMapping("/saveEI")
	public String saveEI(@Valid @ModelAttribute("clientEI") ClientEI clientEI, BindingResult result, Model model) {
		new ClientEISubscribeValidator().validate(clientEI, result);
		if (result.hasErrors()) {
			System.out.println("Le client EI n'a pas été validé ...");
			return "/client/editEI";
			}
	
		clientDao.save(clientEI);
		return "redirect:list";
	}
	
	@PostMapping("/save")
	public String save(@Valid @ModelAttribute("client") Client client , BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println("Le client n'a pas été validé ...");
			return "edit";
			}
		
		clientDao.save(client);

		return "redirect:list";
	}
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam Long id) {

		clientDao.deleteById(id);

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
