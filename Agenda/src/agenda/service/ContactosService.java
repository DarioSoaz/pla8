package agenda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import agenda.DAO.IContactosDAO;
import agenda.entity.contactos;

@Service
public class ContactosService implements IContactosService {

	@Autowired
	private IContactosDAO ContactosDAO;
	
	@Override
	@Transactional
	public List<contactos> getContactos(){
		
		return ContactosDAO.getContactos();
	}
	
	@Override
	@Transactional
	public void save(contactos contactos) {
		ContactosDAO.save(contactos);
	}
	
}
