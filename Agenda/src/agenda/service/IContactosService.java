package agenda.service;

import java.util.List;

import agenda.entity.contactos;

public interface IContactosService {
	public List<contactos> getContactos();
	
	void save(contactos contactos);
	
	contactos getContactos( int idcontactos);
	
	void delete(contactos idcontactos);
}
