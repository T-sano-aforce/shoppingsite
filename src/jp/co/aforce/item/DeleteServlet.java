package jp.co.aforce.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.DAO.ItemDAO;
import jp.co.aforce.beans.ItemBean;

@WebServlet("/jp.co.aforce.item/deleteServlet")
public class DeleteServlet extends HttpServlet {

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
		String transitScreen = "../views/delete.jsp";

		// 商品IDの取得
		String id = request.getParameter("id");

		// 戻るボタンを押された場合はメニュー画面を表示する。
		if (request.getParameter("buttonName").equals("戻る")) {

			transitScreen = "../views/menu.jsp";

			// 表示ボタンを押された場合は商品情報を表示する。
		} else if (request.getParameter("buttonName").equals("表示")) {

			ItemDAO itemDao = new ItemDAO();
			ItemBean itemBean = new ItemBean();

			itemBean = itemDao.search(id);

			if (itemBean == null) {
				// エラーメッセージを設定
				itemBean = new ItemBean();
				itemBean.setEmsg("該当する商品情報が見つかりません");
			}

			request.setAttribute("itemBean", itemBean);

			// 削除ボタンが押された場合は商品情報を削除する
		} else if (request.getParameter("buttonName").equals("削除")) {

			ItemDAO itemDao = new ItemDAO();
			ItemBean itemBean = new ItemBean();

			// 削除処理を実行
			if (itemDao.delete(id)) {

				itemBean.setCommsg("削除に成功しました");
				request.setAttribute("itemBean", itemBean);

			} else {

				itemBean.setCommsg("削除に失敗しました");
				request.setAttribute("itemBean", itemBean);

			}

		}

		// 遷移先画面に遷移する
		request.getRequestDispatcher(transitScreen).forward(request, response);

	}

}