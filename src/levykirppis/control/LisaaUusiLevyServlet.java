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

@WebServlet("/lisaa-levy")
public class LisaaUusiLevyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LisaaUusiLevyServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String jsp = "/view/levylomake.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(jsp);
		dispatcher.forward(request, response);


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// haetaan lomakkeella syötetyn levyn tiedot request oliolta
		String artisti = request.getParameter("artisti");
		String levynNimi = request.getParameter("levynNimi");
		String genre = request.getParameter("genre");
		String formaatti = request.getParameter("formaatti");
		String kuntoluokitus = request.getParameter("kuntoluokitus");
		String hintaString = request.getParameter("hinta");
		double hinta = Double.valueOf(hintaString);
		String email = request.getParameter("email");

		// luodaan uusi levy
		Levy levy = new Levy(0, artisti, levynNimi, genre, formaatti, kuntoluokitus, hinta, email);

		// luodaan levydao-olio
		LevyDAO levydao = new LevyDAO();

		String virheteksti = null;

		try {
			levydao.addLevy(levy);
		} catch (Exception e) {
			virheteksti = "TAPAHTUI TIETOKANTAVIRHE syottamasi input on virheellinen";			
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