package agenda.DAO;

import java.util.List;

import agenda.entity.contactos;

public interface IContactosDAO {
	


	List<contactos> getContactos();
	
	void save(contactos contactos);
}
