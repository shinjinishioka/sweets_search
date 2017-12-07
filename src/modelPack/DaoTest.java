package modelPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoTest {
	private Connection connection;

	// �R���X�g���N�^�ɂ�DB�ւ̃R�l�N�V�����i�q����j���擾����̂ŁA
	// �C���X�^���X�𐶐�����΁A���̃^�C�~���O�ŃR�l�N�V�������擾�����
	public DaoTest() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager
				.getConnection("jdbc:mysql://localhost:3306/sweets"
						+ "?user=Mulder&password=TrustNo2"
						+ "&useUnicode=true&characterEncoding=MS932");
	}

	// �R�l�N�V��������āADB�Ƃ̂Ȃ����؂�
	public void close() {
		try {
			if (connection != null) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// id���󂯎���āAM��SQL�Ɍ����̎w�����o��
	public ProductEntity getSweetsDataById(int id) throws SQLException {
		ProductEntity ent = null;
		PreparedStatement pstatement = null;
		ResultSet rs = null;
		try {
			pstatement = connection
					.prepareStatement("SELECT * FROM product_tbl WHERE product_id = ?");
			pstatement.setInt(1, id);
			// �O�����āH�t����SQL����p�ӂ��āA�ォ��ϐ�id�̒l�ɒu��������
			rs = pstatement.executeQuery();
			// �����̎w���������āA���ʂ�rs�Ŏ󂯎��iid�����Ȃ̂łO���P���j

			if (rs.next()) {
				ent = new ProductEntity();
				// DB��1�������Ǘ��ł���G���e�B�e�B�N���X�̃C���X�^���X�𐶐����E�E�E
				ent.setProduct_id(rs.getInt("product_id"));
				ent.setProduct_name(rs.getString("product_name"));
				// ent.setQuantity(rs.getInt("quantity")); ����g���Ă��Ȃ�
				ent.setPrice(rs.getInt("price"));
				// �����ɕK�v�ȃf�[�^�����U���g�Z�b�g����擾���Ċi�[����
			}
			rs.close();

		} finally {
			pstatement.close();
		}
		return ent;
	}

	public ArrayList<ProductEntity> getSweetsDataByPrice(int from, int to)
			throws SQLException {
		// id�ɂ�錟���̎��́A�Ώۂ��K���P���Ȃ̂�String[]��������
		// ����͔͈͌����Ȃ̂ŕ����̉\��������B
		// �Ȃ̂ŁAString[]��z��̂悤�ɊǗ����邱�Ƃ��ł���
		// ArrayList�𗘗p����B

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
