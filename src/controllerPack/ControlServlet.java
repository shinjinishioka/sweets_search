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
			/* IdSearch�N���X��execute���\�b�h�Ƀ��N�G�X�g�I�u�W�F�N�g��n���Ď��s���� */
			if (req.getParameter("paramId") != null) {
				IdSearch ids = new IdSearch();
				ids.execute(req);

			} else {
				PriceSearch ps = new PriceSearch();
				ps.execute(req);
			}

		} catch (Exception e) {
			req.setAttribute("message", "������������͂��ĉ�����");
		}

		ServletContext context = getServletContext();
		// �R���e�L�X�g�Ƃ͊ȒP�Ɍ����ƃT�[�u���b�g���ǂ̊��œ����Ă���̂�
		// �Ƃ������E�E���I�u�W�F�N�g�Ƃ��Ď擾���āE�E
		RequestDispatcher rd = context.getRequestDispatcher("/search.jsp");
		// �����̑J�ڐ�����߂āE�E
		rd.forward(req, resp);
		// �J�ڐ�Ƀ��N�G�X�g�I�u�W�F�N�g�ƁA���X�|���X�I�u�W�F�N�g��n���āu�i�ށv�B
	}
}
