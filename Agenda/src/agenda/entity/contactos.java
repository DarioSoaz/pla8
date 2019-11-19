package agenda.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "contactos")
public class contactos {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idcontactos")
	private int idcontactos;

	@Column(name = "nombre")
	private String nombre;

	@Column(name = "email")
	private String email;

	@Column(name = "telefono")
	private String telefono;

	public contactos(){}
public contactos(String nombre, String email, String telefono) {
	super();
	this.nombre=nombre;
	this.email=email;
	this.telefono=telefono;
}

public int getIdcontactos() {
	return idcontactos;
}

public void setIdcontactos(int idcontactos) {
	this.idcontactos = idcontactos;
}

public String getNombre() {
	return nombre;
}

public void setNombre(String nombre) {
	this.nombre = nombre;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getTelefono() {
	return telefono;
}

public void setTelefono(String telefono) {
	this.telefono = telefono;
}

@Override
public String toString() {
	return "contactos [idcontactos="+idcontactos+", nombre="+nombre+",email="+email+",telefono="+telefono+"]";
}
	
	
	
}
