package levykirppis.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import levykirppis.model.Levy;

public class LevyDAO extends DataAccessObject {

	////////////////////////////////////////
	// Lis‰‰ yhden levyn tiedot tietokantaan
	////////////////////////////////////////

	public void addLevy(Levy levy) {
		Connection connection = null;
		PreparedStatement stmtInsert = null;

		try {
			// luodaan yhteys ja aloitetaan transaktio
			connection = getConnection();
			// luodaan uusi levy tietokantaan:
			String sqlInsert = "INSERT INTO levy(id, artisti, levynNimi, genre, formaatti, kuntoluokitus, hinta, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			stmtInsert = connection.prepareStatement(sqlInsert);
			stmtInsert.setInt(1, levy.getId());
			stmtInsert.setString(2, levy.getArtisti());
			stmtInsert.setString(3, levy.getLevynNimi());
			stmtInsert.setString(4, levy.getGenre());
			stmtInsert.setString(5, levy.getFormaatti());
			stmtInsert.setString(6, levy.getKuntoluokitus());
			stmtInsert.setDouble(7, levy.getHinta());
			stmtInsert.setString(8, levy.getEmail());
			stmtInsert.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			// suljetaan statement ja yhteys
			close(stmtInsert, connection); 
		}
	}

	////////////////////////////////////////////
	// P‰ivitt‰‰ yhden levyn tiedot tietokantaan
	////////////////////////////////////////////

	public void updateLevy(Levy levy) {
		Connection connection = null;
		PreparedStatement stmtUpdate = null;

		try {
			// luodaan yhteys
			connection = getConnection();
			// sql p‰ivityslause
			String sqlUpdate = "UPDATE levy SET artisti =?, levynNimi =?, genre =?, formaatti =?, kuntoluokitus =?, hinta =?, email =? WHERE id =?";
			stmtUpdate = connection.prepareStatement(sqlUpdate);
			stmtUpdate.setString(1, levy.getArtisti()); 
			stmtUpdate.setString(2, levy.getLevynNimi());
			stmtUpdate.setString(3, levy.getGenre());
			stmtUpdate.setString(4, levy.getFormaatti());
			stmtUpdate.setString(5, levy.getKuntoluokitus());
			stmtUpdate.setDouble(6, levy.getHinta());
			stmtUpdate.setString(7, levy.getEmail());
			stmtUpdate.setInt(8, levy.getId());
			stmtUpdate.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		} finally {
			// suljetaan statement ja yhteys
			close(stmtUpdate, connection); 
		}
	}

	////////////////////////////////////////////////////
	// Hakee tietokannan taulusta kaikki levyt ja luo ja
	// palauttaa tiedot Levy-tyyppisten olioiden listana (ArrayList)
	////////////////////////////////////////////////////

	public ArrayList<Levy> findAll() {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Levy> levyt = new ArrayList<Levy>();
		Levy levy = null;

		try {
			// luodaan yhteys
			conn = getConnection();
			// luodaan komento: haetaan kaikki rivit levyt-taulusta
			String sqlSelect = "SELECT id, artisti, levynNimi, genre, formaatti, kuntoluokitus, hinta, email FROM levy";
			// valmistellaan komento
			stmt = conn.prepareStatement(sqlSelect);
			// l‰hetet‰‰n komento
			rs = stmt.executeQuery();
			// k‰yd‰‰n tulostaulun kaikki rivit l‰pi
			while (rs.next()) {
				levy = readLevy(rs);
				// lis‰t‰‰n levy listaan
				levyt.add(levy);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			// suljetaan
			close(rs, stmt, conn);
		}
		//palautetaan levy-lista (ArrayList)
		return levyt;
	}

	///////////////////////////
	// Hakee yhden levyn tiedot
	///////////////////////////

	public Levy findById(int levyId) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Levy levy = null;

		try {
			// luodaan yhteys
			conn = getConnection();
			// luodaan komento: haetaan valittu rivi tietokannasta
			String sqlSelect = "SELECT * FROM levy WHERE id = ?";
			// valmistellaan komento
			stmt = conn.prepareStatement(sqlSelect);
			stmt.setInt(1, levyId);
			// l‰hetet‰‰n komento
			rs = stmt.executeQuery();
			// k‰yd‰‰n tulostaulun kaikki rivit l‰pi
			// luetaan read() metodilla
			if (rs.next()) {
				levy = readLevy(rs);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			// suljetaan
			close(rs, stmt, conn);
		}
		//palautetaan levy-lista (ArrayList)
		return levy;	
	}		

	////////////////////////////////////////////////////////
	// Lukee tietokannasta levy-taulusta yhden tietorivin
	// (levyn) tiedot. Luo ja palauttaa tietojen perusteella
	// Levy-nimisen olion.
	////////////////////////////////////////////////////////

	private Levy readLevy(ResultSet rs) {

		try {
			// haetaan yhden levyn tiedot kyselyn tulostaulun
			// (ResultSet-tyyppisen rs-olion) aktiiviselta tietorivilt‰
			int id = rs.getInt("id");
			String artisti = rs.getString("artisti");
			String levynNimi = rs.getString("levynNimi");
			String genre = rs.getString("genre");
			String formaatti = rs.getString("formaatti");
			String kuntoluokitus = rs.getString("kuntoluokitus");
			double hinta = rs.getDouble("hinta");
			String email = rs.getString("email");

			// luodaan ja palautetaan uusi levy
			return new Levy(id, artisti, levynNimi, genre, formaatti, kuntoluokitus, hinta, email);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	////////////////////////////////////////////////////////
	// Poistaa yhden levyn tiedot tietokannasta
	////////////////////////////////////////////////////////

	public void removeLevy(int levyId) throws SQLException {
		Connection connection = null;
		PreparedStatement stmtDelete = null;

		try {
			// luodaan yhteys
			connection = getConnection();

			// poistetaan levy tietokannasta
			String sqlInsert = "DELETE FROM levy WHERE id = ?";

			stmtDelete = connection.prepareStatement(sqlInsert);
			stmtDelete.setInt(1, levyId);
			stmtDelete.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			// suljetaan statement ja yhteys
			close(stmtDelete, connection);
		}
	}

	public static void main(String[] args) {
	}

}
