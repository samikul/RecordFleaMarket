package levykirppis.control;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import levykirppis.model.Levy;
import levykirppis.model.dao.LevyDAO;

@WebServlet("/muokkaa-levy")
public class MuokkaaLevyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MuokkaaLevyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		try {
			// muokattavan levyn id numero parametrina
			String strLevyId = request.getParameter("levyid");
			int levyId = Integer.valueOf(strLevyId);

			// luodaan dao-olio ja käsketään hakemaan yksi levy tietokannasta
			LevyDAO levydao = new LevyDAO();
			Levy levy = levydao.findById(levyId);

			// talletetaan request-olion alle levy, jotta tiedot ovat käytössä JSP:llä
			request.setAttribute("levy", levy);

			// lähetä selaimelta tullut pyyntö servletiltä edelleen jsp:lle
			String jsp = "/view/muokkaalevy.jsp";
			RequestDispatcher dispacher = getServletContext().getRequestDispatcher(jsp);
			dispacher.forward(request, response);
		} catch (NumberFormatException e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


			// käyttäjän painettua "muokkaa" painiketta
			
			// update lauseeseen syötettävät tiedot
			String idString = request.getParameter("id");
			int id = Integer.valueOf(idString);
			String artisti = request.getParameter("artisti");
			String levynNimi = request.getParameter("levynNimi");
			String genre = request.getParameter("genre");
			String formaatti = request.getParameter("formaatti");
			String kuntoluokitus = request.getParameter("kuntoluokitus");
			String hintaString = request.getParameter("hinta");
			double hinta = Double.valueOf(hintaString);
			String email = request.getParameter("email");
			
			// luodaan uusi levy uusilla tiedoilla
			Levy levy = new Levy(id, artisti, levynNimi, genre, formaatti, kuntoluokitus, hinta, email);
			
			// luodaan levydao-olio
			LevyDAO levydao = new LevyDAO();
			
			// virhetekstin luonti
			String virheteksti = null;
			
			try {
				// lisätään levyn tiedot tietokantaan
				// ajetaan insert lause tietokannassa
				levydao.updateLevy(levy);
			} catch (Exception e) {
				virheteksti = "TAPAHTUI TIETOKANTAVIRHE syotteesi on virheellinen";			
			}
			
			
			if (virheteksti != null) {
				String koodattuTeksti = URLEncoder.encode(virheteksti, "UTF-8");
				// uudelleenohjataan selain levylista-sivulle virhetekstin kera
				response.sendRedirect("listaa-levyt?viesti=" + koodattuTeksti);
			} else {
				response.sendRedirect("listaa-levyt");
			}



	}

}
