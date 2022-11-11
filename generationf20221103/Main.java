package cl.generationf20221103;

import java.util.ArrayList;

public class Main {

	public static void main(String[] args) {
		// Objetos de colaboración
		
		Usuario usuario = new Usuario();
		
		/*ArrayList <String> telefono = new ArrayList <String>();
		
		telefono.add("324324");
		telefono.add("543452342");
		usuario.setTelefono(telefono);  */
		
		
		// System.out.println(usuario.getTelefono());
		usuario.getTelefono().add("91890829");
		usuario.getTelefono().add("77770829");
		usuario.getTelefono().add("95899066");
		System.out.println(usuario.getTelefono());
		
		
		Direccion direccion = new Direccion();
		direccion.setCalle("El tamarindo");
		direccion.setNumero("8383");
		direccion.setCiudad("Temuco");
		direccion.setRegion("Araucania");
		
		usuario.setDireccion(direccion);
		System.out.println(usuario.getDireccion());
		
			


	}

}
