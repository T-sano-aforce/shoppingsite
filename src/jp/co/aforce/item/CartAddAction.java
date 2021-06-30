package jp.co.aforce.item;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.UserproductDAO;
import jp.co.aforce.beans.Item;
import jp.co.aforce.beans.Product;
import jp.co.aforce.tool.Action;

public class CartAddAction extends Action{
	@SuppressWarnings("unchecked")
	public String execute(
			HttpServletRequest request,HttpServletResponse response
	)throws Exception{
		HttpSession session = request.getSession();

		String id = request.getParameter("id");
		int count = Integer.parseInt(request.getParameter("count"));

		List<Item> cart = (List<Item>)session.getAttribute("cart");
		if(cart == null) {
			cart = new ArrayList<Item>();
			session.setAttribute("cart", cart);
		}

		for(Item item : cart) {
			if(item.getProduct().getId().equals(id)) {
				item.setCount(count);
				return "../views/cart.jsp";


			}
		}
		try {
			UserproductDAO dao = new UserproductDAO();
			List<Product> productList = dao.productSearch();

			session.setAttribute("productList", productList);


			List<Product> list = (List<Product>)session.getAttribute("productList");
			for(Product product : list) {
				if(product.getId().equals(id)) {

					Item item = new Item();
					item.setProduct(product);
					item.setCount(count);
					cart.add(item);

				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "../views/cart.jsp";
	}
}
