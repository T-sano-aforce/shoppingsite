package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import jp.co.aforce.beans.Item;
import jp.co.aforce.beans.Product;

public class PurchaseDAO extends DAO{
	public boolean insert(
			List<Item>cart,String username,String address
	)throws Exception{
		Connection con = getConnection();
		con.setAutoCommit(false);

		for(Item item : cart) {
			PreparedStatement st = con.prepareStatement("insert into purchase(id,itemName,price,count,user_name,user_address) values(?,?,?,?,?,?)");
			Product product = item.getProduct();
			st.setString(1, product.getId());
			st.setString(2, product.getItemName());
			st.setString(3,product.getPrice());
			st.setInt(4,item.getCount());
			st.setString(5,username);
			st.setString(6,address);
			int line = st.executeUpdate();
			st.close();

			if (line != 1) {
				con.rollback();
				con.setAutoCommit(true);
				con.close();
				return false;
			}
		}
		con.commit();
		con.setAutoCommit(true);
		con.close();
		return true;
	}

}
