package levykirppis.model;

public class Levy {




	private int id;
	private String artisti;
	private String levynNimi;
	private String genre;
	private String formaatti;
	private String kuntoluokitus;
	private double hinta;
	private String email;


	public Levy() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Levy(int id, String artisti, String levynNimi, String genre, String formaatti, String kuntoluokitus,
			double hinta, String email) {
		super();
		this.id = id;
		this.artisti = artisti;
		this.levynNimi = levynNimi;
		this.genre = genre;
		this.formaatti = formaatti;
		this.kuntoluokitus = kuntoluokitus;
		this.hinta = hinta;
		this.email = email;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getArtisti() {
		return artisti;
	}


	public void setArtisti(String artisti) {
		this.artisti = artisti;
	}


	public String getLevynNimi() {
		return levynNimi;
	}


	public void setLevynNimi(String levynNimi) {
		this.levynNimi = levynNimi;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public String getFormaatti() {
		return formaatti;
	}


	public void setFormaatti(String formaatti) {
		this.formaatti = formaatti;
	}


	public String getKuntoluokitus() {
		return kuntoluokitus;
	}


	public void setKuntoluokitus(String kuntoluokitus) {
		this.kuntoluokitus = kuntoluokitus;
	}


	public double getHinta() {
		return hinta;
	}


	public void setHinta(double hinta) {
		this.hinta = hinta;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	@Override
	public String toString() {
		return "Levy [id=" + id + ", artisti=" + artisti + ", levynNimi=" + levynNimi + ", genre=" + genre
				+ ", formaatti=" + formaatti + ", kuntoluokitus=" + kuntoluokitus + ", hinta=" + hinta + ", email="
				+ email + "]";
	}


	public static void main(String[] args) {


	}

}
