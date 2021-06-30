package jp.co.aforce.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.DAO.ItemDAO;
import jp.co.aforce.beans.ItemBean;

@WebServlet("/jp.co.aforce.item/updateServlet")
public class UpdateServlet extends HttpServlet {

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
		String transitScreen = "../views/update.jsp";

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

			// 変更ボタンを押された場合は商品情報を更新する
		} else if (request.getParameter("buttonName").equals("変更")) {

			// ユーザによって入力された情報を itemBean に格納する
			ItemBean itemBean = new ItemBean();
			itemBean.setId(id);
			itemBean.setImg(request.getParameter("img"));
			itemBean.setItemName(request.getParameter("itemName"));
			itemBean.setPrice(request.getParameter("price"));


			ItemDAO itemDAO = new ItemDAO();

			// 全て入力されているかどうかのチェック
			if (itemDAO.inputCheck(itemBean)) {

				// 変更処理を実行
				if (itemDAO.update(itemBean)) {

					itemBean.setCommsg("変更に成功しました");
					request.setAttribute("itemBean", itemBean);

				} else {

					itemBean.setCommsg("変更に失敗しました");
					request.setAttribute("itemBean", itemBean);

				}

				// 入力にエラーがある場合
			} else {

				// エラーメッセージを設定
				itemBean.setEmsg("入力されていない項目があります");
				request.setAttribute("itemBean", itemBean);

			}

		}

		// 遷移先画面に遷移する
		request.getRequestDispatcher(transitScreen).forward(request, response);

	}

}