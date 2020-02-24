package levykirppis.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import levykirppis.model.dao.LevyDAO;

@WebServlet("/poista-levy")
public class PoistaLevyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		// haetaan lomakkeella syötetyn levyn tiedot request-oliolta
		String idStr = request.getParameter("levyid");
		int levyId = Integer.valueOf(idStr);

		// luodaan levydao
		LevyDAO levydao = new LevyDAO();
		try {
			// lisätään levyn tiedot tietokantaan
			levydao.removeLevy(levyId);

		} catch (SQLException e) {
			System.out.println("Sovelluksessa tapahtui virhe " + e.getMessage());
		}

		// uudelleenohjataan selain levylista-sivulle
		response.sendRedirect("listaa-levyt");




	}


}
