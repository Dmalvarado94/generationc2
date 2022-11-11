package cl.generationf20221103;

public class Direccion {
	
	private String calle;
	private String numero;
	private String sector;
	private String ciudad;
	private String region;
	public Direccion() {
		super();
	}
	public Direccion(String calle, String numero, String sector, String ciudad, String region) {
		super();
		this.calle = calle;
		this.numero = numero;
		this.sector = sector;
		this.ciudad = ciudad;
		this.region = region;
	}
	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	@Override
	public String toString() {
		return "Direccion [calle=" + calle + ", numero=" + numero + ", sector=" + sector + ", ciudad=" + ciudad
				+ ", region=" + region + "]";
	}

	
}
