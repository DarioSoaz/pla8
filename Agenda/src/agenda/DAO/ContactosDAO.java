package agenda.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import agenda.entity.contactos;

@Repository
public class ContactosDAO implements IContactosDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<contactos> getContactos() {
		Session miSesion=sessionFactory.getCurrentSession();
		
		List<contactos> contact=miSesion.createQuery("from contactos",contactos.class).list();
		return contact;
	}
	
	@Override
	public void save(contactos contactos) {
		Session miSesion=sessionFactory.getCurrentSession();
		miSesion.saveOrUpdate(contactos);
	}
	
	@Override
	public contactos getContactos( int idcontactos) {
		Session miSesion=sessionFactory.getCurrentSession();
		return miSesion.get(contactos.class,idcontactos);
	}
	
	@Override
	public void delete(contactos contactos) {
		Session miSesion=sessionFactory.getCurrentSession();
		miSesion.delete(contactos);
	}

}
