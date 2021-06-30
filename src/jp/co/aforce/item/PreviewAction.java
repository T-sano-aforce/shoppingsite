package jp.co.aforce.item;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.beans.Item;
import jp.co.aforce.tool.Action;

public class PreviewAction extends Action{
	@SuppressWarnings("unchecked")
	public String execute(
		HttpServletRequest request,HttpServletResponse response
	)throws Exception{
		HttpSession session = request.getSession();

		if(session.getAttribute("login") == null) {
			return "../views/preview-error-login.jsp";
		}

		List<Item>cart = (List<Item>)session.getAttribute("cart");
		if(cart == null || cart.size() == 0) {
			return "preview-error-cart.jsp";
		}
		return "../views/purchase-in.jsp";
	}
}
