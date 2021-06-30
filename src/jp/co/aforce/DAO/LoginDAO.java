package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.beans.LoginBean;

public class LoginDAO extends DAO{
		//ログイン判定
		public LoginBean getMember(String id, String password) throws Exception {

			//実行結果を格納する変数
			ResultSet rs = null;
			LoginBean loginBean = new LoginBean();

			Connection con = getConnection();//データベース接続
			String sql = "SELECT * FROM user WHERE id = ? AND password = ?";

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, password);
			rs = st.executeQuery();

			if (rs.next()) {
				loginBean.setId(rs.getString("id"));
				loginBean.setUsername(rs.getString("username"));
				loginBean.setPassword(rs.getString("password"));
				loginBean.setAddress(rs.getString("address"));
			} else {
				return null;
			}

			st.close();
			con.close();

			return loginBean;

		}
	}

