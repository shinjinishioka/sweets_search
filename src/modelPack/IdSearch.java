package modelPack;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class IdSearch {
	public void execute(HttpServletRequest request) throws Exception {
		DaoTest daoTest = null;
		String id = request.getParameter("paramId");
		// �T�[�u���b�g���烊�N�G�X�g�I�u�W�F�N�g���󂯎���Ă���̂ŁA
		// �O��ʂ���n���ꂽ�p�����[�^�̎擾���\
		try {
			if (id != null && !id.equals("")) {
				// �p�����[�^������΁ADAO�𗘗p����DB�Ɍ�����������
				daoTest = new DaoTest();
				ProductEntity ent = daoTest.getSweetsDataById(Integer
						.parseInt(id));
				if (ent != null) {
					String nantoka = request.getParameter("nantoka");
					request.setAttribute("nantoka", nantoka);
					request.setAttribute("sweets", ent);
				} else {
					request.setAttribute("message", "�Y���͂���܂���");
				}
			} else {
				request.setAttribute("message", "ID ����͂��Ă�������");
			}
		} catch (NumberFormatException e) {
			request.setAttribute("message", "���l����͂��ĉ�����");
		} catch (SQLException e) {
			request.setAttribute("message", "JDBC �̃G���[�ł�");
		} finally {
			if (daoTest != null) {
				daoTest.close();
			}
		}
	}
}