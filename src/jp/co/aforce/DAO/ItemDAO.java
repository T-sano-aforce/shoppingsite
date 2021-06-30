package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import jp.co.aforce.beans.ItemBean;

public class ItemDAO extends DAO {
	// 必須チェック
		public boolean inputCheck(ItemBean item) {

			if (item.getImg().isEmpty() || item.getItemName().isEmpty()|| item.getPrice().isEmpty()) {

				return false;

			}

			return true;
		}

		// 商品IDによる商品情報の取得
		public ItemBean search(String keyword) {

			ItemBean item = new ItemBean();

			Connection con = null;
			PreparedStatement st = null;

			try {

				con = getConnection();
				st = con.prepareStatement("select * from item where id = ?");
				st.setString(1, keyword);
				ResultSet rs = st.executeQuery();

				if (rs.next()) {

					item.setId(keyword);
					item.setImg(rs.getString("img"));
					item.setItemName(rs.getString("ItemName"));
					item.setPrice(String.valueOf(rs.getInt("Price")));

				} else {

					item = null;

				}

				st.close();
				con.close();

			} catch (Exception e) {
				e.printStackTrace();
			}

			return item;
		}

		// 商品情報の登録
		public boolean insert(ItemBean item) {

			boolean result = false;
			Connection con = null;
			PreparedStatement st = null;

			try {

				con = getConnection();
				st = con.prepareStatement("insert into item values(?,?,?,?)");

				// 商品ID自動生成
				LocalDateTime date = LocalDateTime.now();
				DateTimeFormatter format = DateTimeFormatter.ofPattern("yyMMddHHmmss");
				String id =  "A" + format.format(date);

				st.setString(1, id);
				st.setString(2,item.getImg());
				st.setString(3, item.getItemName());
				st.setInt(4, Integer.valueOf(item.getPrice()));

				int line = st.executeUpdate();

				if (line > 0) {
					result = true;
				}

				st.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

			return result;

		}

		// 商品情報の変更
		public boolean update(ItemBean item) {

			boolean result = false;
			Connection con = null;
			PreparedStatement st = null;

			try {
				con = getConnection();
				st = con.prepareStatement("update item set img=?,itemname=?,price=? WHERE id=?");

				st.setString(1, item.getImg());
				st.setString(2, item.getItemName());
				st.setInt(3, Integer.valueOf(item.getPrice()));
				st.setString(4, item.getId());

				int line = st.executeUpdate();

				if (line > 0) {
					result = true;
				}

				st.close();
				con.close();

			} catch (Exception e) {
				e.printStackTrace();
			}

			return result;
		}

		// 商品情報の削除
		public boolean delete(String id) {

			boolean result = false;
			Connection con = null;
			PreparedStatement st = null;

			try {
				con = getConnection();
				st = con.prepareStatement("delete from item where id = ?");
				st.setString(1, id);

				int line = st.executeUpdate();

				if (line > 0) {
					result = true;
				}

				st.close();
				con.close();

			} catch (Exception e) {
				e.printStackTrace();
			}

			return result;
		}



	}

