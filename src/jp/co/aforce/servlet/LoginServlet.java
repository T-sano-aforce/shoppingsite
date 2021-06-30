package jp.co.aforce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.LoginDAO;
import jp.co.aforce.beans.LoginBean;

@WebServlet(urlPatterns = { "/jp.co.aforce.servlet/loginServlet" })
public class LoginServlet extends HttpServlet {

	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();

		//リクエストパラメータを受け取る
		String id = request.getParameter("id");
		String password = request.getParameter("password");

		String jsp = "../views/login.jsp";

		HttpSession session = request.getSession();

		//会員情報のプロパティ
		LoginBean login = new LoginBean();

		try {
			//ログイン判定
			LoginDAO dao = new LoginDAO();
			login = dao.getMember(id, password);

			if (login != null) {
				session.setAttribute("login",login);
				jsp = "../views/success.jsp";

				//管理者判定

				if(id.contains("T")) {
					jsp = "../views/menu.jsp";
				}else {
					jsp = "../views/success.jsp";
				}
			} else {
				login = new LoginBean();
				login.setMsg("IDまたはパスワードが違います");
				login.setId(id);
				login.setPassword(password);
			}


			request.setAttribute("login", login);
			request.getRequestDispatcher(jsp).forward(request, response);


		} catch (Exception e) {
			e.printStackTrace(out);
		}

	}

}