//子クラス
package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.beans.Product;

public class UserproductDAO extends DAO {
	public List<Product> search (String keyword)throws Exception{
		List<Product>list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("select * from item where itemName like ?");
		st.setString(1, "%" + keyword + "%");
		ResultSet rs = st.executeQuery();

		while (rs.next()) {
			Product product = new Product();
			product.setId(rs.getString("id"));
			product.setImg(rs.getString("img"));
			product.setItemName(rs.getString("itemName"));
			product.setPrice(rs.getString("price"));
			list.add(product);
		}
		st.close();
		con.close();

		return list;
	}

	public List<Product>productSearch() throws Exception{
		List<Product>list = new ArrayList<>();

		Connection con = getConnection();

		PreparedStatement st = con.prepareStatement("select * from item");
		ResultSet rs = st.executeQuery();

		while(rs.next()){
			Product product = new Product();
			product.setId(rs.getString("id"));
			product.setImg(rs.getString("img"));
			product.setItemName(rs.getString("itemName"));
			product.setPrice(rs.getString("price"));
			list.add(product);
		}
		st.close();
		con.close();

		return list;
	}
}
