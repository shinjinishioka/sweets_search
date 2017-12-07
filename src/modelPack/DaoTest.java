package modelPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoTest {
	private Connection connection;

	// コンストラクタにてDBへのコネクション（繋がり）を取得するので、
	// インスタンスを生成すれば、そのタイミングでコネクションも取得される
	public DaoTest() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/sweets"
						+ "?user=Mulder&password=TrustNo2"
						+ "&useUnicode=true&characterEncoding=MS932");
	}

	// コネクションを閉じて、DBとのつながりを切る
	public void close() {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// idを受け取って、MｙSQLに検索の指示を出す
	public ProductEntity getSweetsDataById(int id) throws SQLException {
		ProductEntity ent = null;
		PreparedStatement pstatement = null;
		ResultSet rs = null;
		try {
			pstatement = connection
					.prepareStatement("SELECT * FROM product_tbl WHERE product_id = ?");
			pstatement.setInt(1, id);
			// 前もって？付きのSQL文を用意して、後から変数idの値に置き換える
			rs = pstatement.executeQuery();
			// 検索の指示をだして、結果をrsで受け取る（id検索なので０か１件）

			if (rs.next()) {
				ent = new ProductEntity();
				// DBの1件分を管理できるエンティティクラスのインスタンスを生成し・・・
				ent.setProduct_id(rs.getInt("product_id"));
				ent.setProduct_name(rs.getString("product_name"));
				// ent.setQuantity(rs.getInt("quantity")); 今回使っていない
				ent.setPrice(rs.getInt("price"));
				// そこに必要なデータをリザルトセットから取得して格納する
			}
			rs.close();

		} finally {
			pstatement.close();
		}
		return ent;
	}

	public ArrayList<ProductEntity> getSweetsDataByPrice(int from, int to)
			throws SQLException {
		// idによる検索の時は、対象が必ず１件なのでString[]だったが
		// 今回は範囲検索なので複数の可能性がある。
		// なので、String[]を配列のように管理することができる
		// ArrayListを利用する。

		ArrayList<ProductEntity> sweetsData = null;
		PreparedStatement pstatement = null;
		ResultSet rs = null;
		ProductEntity ent;

		try {
			pstatement = connection
					.prepareStatement("SELECT * FROM product_tbl WHERE price BETWEEN ? AND ?");

			pstatement.setInt(1, from);

			pstatement.setInt(2, to);

			rs = pstatement.executeQuery();
			sweetsData = new ArrayList<ProductEntity>();
			while (rs.next()) {
				ent = new ProductEntity();
				ent.setProduct_id(rs.getInt("product_id"));
				ent.setProduct_name(rs.getString("product_name"));
				ent.setPrice(rs.getInt("price"));
				sweetsData.add(ent);
			}
			rs.close();

		} finally {
			pstatement.close();
		}
		return sweetsData;
	}
}
