package cl.generationf20221103;

import java.util.ArrayList;

public class Usuario {
	private String nombre;
	private String apellido;
	private String password;
	private String nick;
	private String correo;
	
	private ArrayList<String> telefono;
	// Dirección es un Atributo de colaboración
	private Direccion direccion;
	public Usuario() {
		super();
		//Estamos inicializando un arreglo
		this.telefono = new ArrayList<String>();
	}
	public Usuario(String nombre, String apellido, String password, String nick, String correo,
			ArrayList<String> telefono, Direccion direccion) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.password = password;
		this.nick = nick;
		this.correo = correo;
		this.telefono = telefono;
		this.direccion = direccion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public ArrayList<String> getTelefono() {
		return telefono;
	}
	public void setTelefono(ArrayList<String> telefono) {
		this.telefono = telefono;
	}
	public Direccion getDireccion() {
		return direccion;
	}
	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
	}

	
}
