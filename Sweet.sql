#古いデータベース領域の削除
DROP DATABASE IF EXISTS Sweet;
#データベース領域の作成
CREATE DATABASE Sweet;
#データベース領域の指定
USE Sweet;
#店テーブルの作成
CREATE TABLE mise_mst(
	tenpo_id INT AUTO_INCREMENT PRIMARY KEY,
	tenpomei CHAR(50),
);
#レコードの追加
INSERT INTO mise_mst(tenpomei) VALUES('コージーコーナー');
INSERT INTO mise_mst(tenpomei) VALUES('旬果瞬菓　共楽堂');
INSERT INTO mise_mst(tenpomei) VALUES('テオブロマ');
INSERT INTO mise_mst(tenpomei) VALUES('ノア・ドゥ・ブール');
INSERT INTO mise_mst(tenpomei) VALUES('ガトー・フェスタ・ハラダ');
INSERT INTO mise_mst(tenpomei) VALUES('モロゾフ');
INSERT INTO mise_mst(tenpomei) VALUES('クラブハリエ');
INSERT INTO mise_mst(tenpomei) VALUES('ねんりん家');
INSERT INTO mise_mst(tenpomei) VALUES('黒船');
INSERT INTO mise_mst(tenpomei) VALUES('宗家 源吉兆庵');
INSERT INTO mise_mst(tenpomei) VALUES('江戸うさぎ');
INSERT INTO mise_mst(tenpomei) VALUES('伊勢家');
INSERT INTO mise_mst(tenpomei) VALUES('かめむら');
INSERT INTO mise_mst(tenpomei) VALUES('ブールミッシュ');
INSERT INTO mise_mst(tenpomei) VALUES('叶　匠寿庵');
INSERT INTO mise_mst(tenpomei) VALUES('不二家');
INSERT INTO mise_mst(tenpomei) VALUES('かねすえ');

#駅テーブルの作成
CREATE TABLE eki_tbl(
	tenpo_id INT PRIMARY KEY,
	moyoribangou INT PRIMARY KEY,
        ekimei CHAR(25),
);
#レコードの追加
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,1,'新宿南口');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,2,'日暮里');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,3,'新小岩');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,4,'中野');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(1,5,'亀有');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(2,1,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(2,2,'とうきょうスカイツリー');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(3,1,'代々木八幡');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(3,2,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(3,3,'椎名町');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(4,1,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(4,2,'日本橋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,1,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,2,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,3,'上野');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(5,4,'銀座');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,1,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,2,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,3,'上野');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,4,'錦糸町');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(6,5,'渋谷');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(7,1,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(7,2,'日本橋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(8,1,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(8,2,'東京');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(8,3,'銀座');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,1,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,2,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,3,'上野');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,4,'銀座');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(9,5,'東京');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(10,1,'銀座');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(10,2,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(11,1,'日暮里');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(12,1,'亀有');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(13,1,'亀有');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,1,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,2,'渋谷');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,3,'日本橋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,4,'錦糸町');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(14,5,'浅草');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,1,'日本橋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,2,'東京');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,3,'池袋');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,4,'新宿');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(15,5,'渋谷');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,1,'中野');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,2,'亀有');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,3,'高砂');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(16,4,'綾瀬');
INSERT INTO mise_mst(tenpo_id,moyoribangou,ekimei) VALUES(17,1,'池袋');
