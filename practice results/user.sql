CREATE TABLE User (
  id INTEGER NOT NULL,
  email VARCHAR(30) NOT NULL,
  username VARCHAR(30) NOT NULL,
  PASSWORD VARCHAR(30) NOT NULL,
  sex VARCHAR(2) NOT NULL,
  region VARCHAR(10) NOT NULL
)


INSERT INTO User VALUES(1,'111@qq.com','adam','111','男','北京')
INSERT INTO User VALUES(2,'222@qq.com','brown','222','男','江苏南京')
INSERT INTO User VALUES(3,'333@qq.com','charles','333','男','浙江杭州')
INSERT INTO User VALUES(4,'444@qq.com','daniel','444','男','福建福州')
INSERT INTO User VALUES(5,'555@qq.com','eagle','555','男','广东广州')


