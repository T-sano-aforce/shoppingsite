package jp.co.aforce.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.DAO.ItemDAO;
import jp.co.aforce.beans.ItemBean;

@WebServlet("/jp.co.aforce.item/registServlet")
public class RegistServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.getRequestDispatcher("../views/menu.jsp").forward(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		request.setCharacterEncoding("UTF-8");

		// 遷移先画面の設定
		String transitScreen = "../views/regist.jsp";

		String button = request.getParameter("buttonName");

		if (button.equals("")) {
			transitScreen = "../views/regist.jsp";
		} else {

			// 戻るボタンを押された場合はメニュー画面を表示する。
			if (request.getParameter("buttonName").equals("戻る")) {

				transitScreen = "../views/menu.jsp";

			} else {

				// ユーザによって入力された情報を itemBean に格納する
				ItemBean itemBean = new ItemBean();
				itemBean.setImg(request.getParameter("img"));
				itemBean.setItemName(request.getParameter("itemName"));
				itemBean.setPrice(request.getParameter("price"));


				// Daoの実行
				ItemDAO itemDao = new ItemDAO();

				// 全て入力されているかどうかのチェック
				if (itemDao.inputCheck(itemBean)) {

					// 登録処理


						if(itemDao.insert(itemBean)) {

						itemBean.setCommsg("登録に成功しました");
						request.setAttribute("itemBean", itemBean);

						}else {

						itemBean.setCommsg("登録に失敗しました");
						request.setAttribute("itemBean", itemBean);

						}

					// 入力にエラーがある場合
				}else{
					// エラーメッセージを設定
					itemBean.setEmsg("入力されていない項目があります");
					request.setAttribute("itemBean", itemBean);
				}

			}

		}

		// 遷移先画面に遷移する
		request.getRequestDispatcher(transitScreen).forward(request, response);

	}

}