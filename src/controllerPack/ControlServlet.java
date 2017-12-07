package controllerPack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelPack.IdSearch;
import modelPack.PriceSearch;

public class ControlServlet extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("Windows-31J");
		try {
			/* IdSearchクラスのexecuteメソッドにリクエストオブジェクトを渡して実行する */
			if (req.getParameter("paramId") != null) {
				IdSearch ids = new IdSearch();
				ids.execute(req);

			} else {
				PriceSearch ps = new PriceSearch();
				ps.execute(req);
			}

		} catch (Exception e) {
			req.setAttribute("message", "検索条件を入力して下さい");
		}

		ServletContext context = getServletContext();
		// コンテキストとは簡単に言うとサーブレットがどの環境で働いているのか
		// という情報・・をオブジェクトとして取得して・・
		RequestDispatcher rd = context.getRequestDispatcher("/search.jsp");
		// 処理の遷移先を決めて・・
		rd.forward(req, resp);
		// 遷移先にリクエストオブジェクトと、レスポンスオブジェクトを渡して「進む」。
	}
}
