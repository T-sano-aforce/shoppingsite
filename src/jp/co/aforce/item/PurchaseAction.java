package jp.co.aforce.item;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.PurchaseDAO;
import jp.co.aforce.beans.Item;
import jp.co.aforce.tool.Action;

public class PurchaseAction extends Action{
	@SuppressWarnings("unchecked")
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	)throws Exception{
		HttpSession session = request.getSession();

		String  username = request.getParameter("username");
		String address = request.getParameter("address");
		if(username.isEmpty() || address.isEmpty()) {
			return "../views/purchase-error-empty.jsp";
		}

		PurchaseDAO dao = new PurchaseDAO();
		List<Item> cart = (List<Item>)session.getAttribute("cart");
		if(cart == null || !dao.insert(cart,username,address)) {
		}

		session.removeAttribute("cart");
		return "../views/purchase-out.jsp";
	}
}
