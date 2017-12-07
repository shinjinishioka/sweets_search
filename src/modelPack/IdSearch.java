package modelPack;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class IdSearch {
	public void execute(HttpServletRequest request) throws Exception {
		DaoTest daoTest = null;
		String id = request.getParameter("paramId");
		// サーブレットからリクエストオブジェクトを受け取っているので、
		// 前画面から渡されたパラメータの取得が可能
		try {
			if (id != null && !id.equals("")) {
				// パラメータがあれば、DAOを利用してDBに検索をかける
				daoTest = new DaoTest();
				ProductEntity ent = daoTest.getSweetsDataById(Integer
						.parseInt(id));
				if (ent != null) {
					String nantoka = request.getParameter("nantoka");
					request.setAttribute("nantoka", nantoka);
					request.setAttribute("sweets", ent);
				} else {
					request.setAttribute("message", "該当はありません");
				}
			} else {
				request.setAttribute("message", "ID を入力してください");
			}
		} catch (NumberFormatException e) {
			request.setAttribute("message", "数値を入力して下さい");
		} catch (SQLException e) {
			request.setAttribute("message", "JDBC のエラーです");
		} finally {
			if (daoTest != null) {
				daoTest.close();
			}
		}
	}
}