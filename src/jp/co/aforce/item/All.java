package jp.co.aforce.item;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import jp.co.aforce.beans.Product;

@WebServlet(urlPatterns = { "/jp.co.aforce.item/all" })
public class All extends HttpServlet {
	public void doGet(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		String jsp = "../views/adminItemList.jsp";

		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource) ic.lookup("java:/comp/env/jdbc/shoppingsite");
			Connection con = ds.getConnection();

			PreparedStatement st = con.prepareStatement("select * from item");
			ResultSet rs = st.executeQuery();

			HttpSession session = request.getSession();

			List<Product> list = new ArrayList<>();

			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getString("id"));
				product.setImg(rs.getString("img"));
				product.setItemName(rs.getString("itemName"));
				product.setPrice(rs.getString("price"));
				list.add(product);
			}
			session.setAttribute("list", list);

			st.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher(jsp).forward(request, response);

	}

}
