package modelPack;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class PriceSearch {
	public void execute(HttpServletRequest request) throws Exception {
		DaoTest daoTest = null;
		String price1 = request.getParameter("paramPrice1");
		String price2 = request.getParameter("paramPrice2");

		try {
			if (price1 != null && !price1.equals("") && price2 != null
					&& !price2.equals("")) {
				// パラメータがあれば、DAOを利用してDBに検索をかける
				daoTest = new DaoTest();
				ArrayList<ProductEntity> sweetsData = daoTest
						.getSweetsDataByPrice(Integer.parseInt(price1),
								Integer.parseInt(price2));

				if (sweetsData != null && sweetsData.isEmpty() == false) {
					String nantoka = request.getParameter("nantoka");
					request.setAttribute("nantoka", nantoka);
					System.out.println(nantoka);
					request.setAttribute("swd", sweetsData);
				} else {
					request.setAttribute("message", "該当はありません");
				}
			} else {
				request.setAttribute("message", "金額 を入力してください");
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