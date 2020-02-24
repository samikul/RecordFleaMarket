package levykirppis.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import levykirppis.model.Levy;
import levykirppis.model.dao.LevyDAO;

@WebServlet("/listaa-levyt")

public class ListaaLevytServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ListaaLevytServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// luodaan levyDAO ja k�sket��n hakemaan kaikki levyt
		LevyDAO levydao = new LevyDAO();
		ArrayList<Levy> levyt = levydao.findAll();

		// tallennetaan request-olion alle levylista, jotta
		// tiedot ovat k�yt�ss� jsp:ll�
		request.setAttribute("levyt", levyt);

		// l�het� selaimelta tullut pyynt� servletilt� edelleen jsp:lle
		String jsp = "/view/levylista.jsp";
		RequestDispatcher dispacher = getServletContext().getRequestDispatcher(jsp);
		dispacher.forward(request, response);
	}


}