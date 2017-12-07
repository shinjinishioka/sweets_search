#�Â��f�[�^�x�[�X�̈�̍폜
DROP DATABASE IF EXISTS Sweet;
#�f�[�^�x�[�X�̈�̍쐬
CREATE DATABASE Sweet;
#�f�[�^�x�[�X�̈�̎w��
USE Sweet;
#�X�e�[�u���̍쐬
CREATE TABLE mise_mst(
	tenpo_id INT AUTO_INCREMENT PRIMARY KEY,
	tenpomei CHAR(50),
);
#���R�[�h�̒ǉ�
INSERT INTO mise_mst(tenpomei) VALUES('�R�[�W�[�R�[�i�[');
INSERT INTO mise_mst(tenpomei) VALUES('�{�ʏu�ف@���y��');
INSERT INTO mise_mst(tenpomei) VALUES('�e�I�u���}');
INSERT INTO mise_mst(tenpomei) VALUES('�m�A�E�h�D�E�u�[��');
INSERT INTO mise_mst(tenpomei) VALUES('�K�g�[�E�t�F�X�^�E�n���_');
INSERT INTO mise_mst(tenpomei) VALUES('�����]�t');
INSERT INTO mise_mst(tenpomei) VALUES('�N���u�n���G');
INSERT INTO mise_mst(tenpomei) VALUES('�˂����');
INSERT INTO mise_mst(tenpomei) VALUES('���D');
INSERT INTO mise_mst(tenpomei) VALUES('�@�� ���g����');
INSERT INTO mise_mst(tenpomei) VALUES('�]�˂�����');
INSERT INTO mise_mst(tenpomei) VALUES('�ɐ���');
INSERT INTO mise_mst(tenpomei) VALUES('���߂ނ�');
INSERT INTO mise_mst(tenpomei) VALUES('�u�[���~�b�V��');
INSERT INTO mise_mst(tenpomei) VALUES('���@������');
INSERT INTO mise_mst(tenpomei) VALUES('�s���');
INSERT INTO mise_mst(tenpomei) VALUES('���˂���');

#�w�e�[�u���̍쐬
CREATE TABLE eki_tbl(
	tenpo_id INT PRIMARY KEY,
	moyoribangou INT PRIMARY KEY,
        ekimei CHAR(25),
);
#���R�[�h�̒ǉ�
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,1,'�V�h���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,2,'���闢');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,3,'�V����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,4,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,5,'�T�L');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(2,1,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(2,2,'�Ƃ����傤�X�J�C�c���[');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(3,1,'��X�ؔ���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(3,2,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(3,3,'�Ŗ���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(4,1,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(4,2,'���{��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,1,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,2,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,3,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,4,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,1,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,2,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,3,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,4,'�ю���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,5,'�a�J');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(7,1,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(7,2,'���{��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(8,1,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(8,2,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(8,3,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,1,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,2,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,3,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,4,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,5,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(10,1,'���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(10,2,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(11,1,'���闢');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(12,1,'�T�L');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(13,1,'�T�L');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,1,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,2,'�a�J');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,3,'���{��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,4,'�ю���');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,5,'��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,1,'���{��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,2,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,3,'�r��');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,4,'�V�h');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,5,'�a�J');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,1,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,2,'�T�L');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,3,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,4,'����');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(17,1,'�r��');
