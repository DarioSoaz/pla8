package agenda.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import agenda.service.IContactosService;
import agenda.entity.contactos;



@Controller
@RequestMapping("/agenda")
public class AgendaController {
	
	@Autowired
	private IContactosService contactosService;
	
	
	@RequestMapping("/agenda")
	public String Principal() {
		return "agenda";
	}
	
	@RequestMapping("/lista")
	public String lista(Model modelo) {
		
		List<contactos> contactos=contactosService.getContactos();

		modelo.addAttribute("contactos",contactos);
		
		return "lista-contactos";
	}
	
	@RequestMapping("/añadir")
	public String añadirContacto(Model modelo) {
		contactos contactos=new contactos();
		modelo.addAttribute("contactos",contactos);		
		return "formulario";
	}
	
	@PostMapping("/guardar")
	public String guardarContacto( @ModelAttribute("contactos") contactos contactos) {
		contactosService.save(contactos);
		
		return "redirect:/agenda/lista";
	}
	
	@RequestMapping("/actualizar")
	public String updateContactos(@RequestParam("idcontactos") int idcontactos, Model modelo) {

		contactos contactos = contactosService.getContactos(idcontactos);
		modelo.addAttribute("contactos", contactos);
		return "formulario";
	}
	
	@GetMapping("borrar")
	public String deleteContactos(@RequestParam("idcontactos") int idcontactos) {
		contactos contactos = contactosService.getContactos(idcontactos);
		contactosService.delete(contactos);

		return "redirect:/agenda/lista";
	}
	
	


}
