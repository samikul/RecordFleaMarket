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

@WebServlet("/etsi-levy")
public class EtsiLevyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EtsiLevyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



		
		// virhetekstin luonti
		String virheteksti = null;
		
		try {
			// haetaan lomakkeella syötetyn levyn tiedot request oliolta
			// tämä id syötetään SELECT lauseeseen
			String idString = request.getParameter("id");
			int id = Integer.valueOf(idString);
			
			
			// luodaan levydao-olio
			LevyDAO levydao = new LevyDAO();

			// etsitään yhtä riviä annetulla id:llä
			Levy levy = levydao.findById(id);

			// talletetaan request-olion alle levy, jotta tiedot ovat käytössä JSP:llä
			request.setAttribute("levy", levy);

			// lähetä selaimelta tullut pyyntö servletiltä edelleen jsp:lle
			String jsp = "/view/haettulevy.jsp";
			RequestDispatcher dispacher = getServletContext().getRequestDispatcher(jsp);
			dispacher.forward(request, response);

		} catch (Exception e) {
			virheteksti = "TAPAHTUI TIETOKANTAVIRHE voit etsia vain kokonaisluvuilla";			
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
