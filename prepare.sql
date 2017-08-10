DROP DATABASE sbtdb;

CREATE DATABASE sbtdb;

USE sbtdb;

CREATE TABLE IF NOT EXISTS `sbtdb`.`book` (
  `book_id` INT NOT NULL AUTO_INCREMENT,
  `book_name` VARCHAR(200) NULL,
  `link` VARCHAR(1000) NULL,
  `img` VARCHAR(2000) NULL,
  `description` VARCHAR(2000) NULL,
  `tag` VARCHAR(200) NULL,
  PRIMARY KEY (`book_id`));


CREATE TABLE IF NOT EXISTS `sbtdb`.`user_info` (
  `user_id` INT NOT NULL,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`user_id`));

CREATE TABLE IF NOT EXISTS `sbtdb`.`authorities` (
  `user_id` INT NOT NULL,
  `authority` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`user_id`, `authority`),
  CONSTRAINT `fk_authorities_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `sbtdb`.`user_info` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `sbtdb`.`user_info` (`user_id`, `username`, `password`, `email`) VALUES ('1', 'admin', '$2a$10$0xEf3JbeuaQte16t5GQ56epgILEZKSonOKzKZPcpIs1usE0Ir8kcu', 'admin@localhost');
INSERT INTO `sbtdb`.`user_info` (`user_id`, `username`, `password`, `email`) VALUES ('2', 'sbt', '$2a$10$HfW1CordTM4.WmWMZpwfIei4qXVB9BApVQRwDEFevgcYq0502jMKy', 'sbt@localhost');

INSERT INTO `sbtdb`.`authorities` (`user_id`, `authority`) VALUES ('1', 'ACTUATOR');
INSERT INTO `sbtdb`.`authorities` (`user_id`, `authority`) VALUES ('1', 'ROLE_ADMIN');
INSERT INTO `sbtdb`.`authorities` (`user_id`, `authority`) VALUES ('2', 'ROLE_USER');

INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('1', 'SpringBootプログラミング入門', 'http://amzn.to/2vRnKyP', '<a href="https://www.amazon.co.jp/gp/product/4798045659/ref=as_li_ss_il?ie=UTF8&pd_rd_i=4798045659&pd_rd_r=WQF43F5PZ58P6539MTW0&pd_rd_w=rmL1a&pd_rd_wg=AXBgS&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=&pf_rd_r=CA77E03TXE3C8R7KSJ6Y&pf_rd_t=36701&pf_rd_p=d4802771-73ad-49b1-a154-90aaec384d3e&pf_rd_i=desktop&linkCode=li1&tag=nicechoice-22&linkId=616fa4bef2ca8174e37e49f6f2036133" target="_blank"><img border="0" src="//ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=4798045659&Format=_SL110_&ID=AsinImage&MarketPlace=JP&ServiceVersion=20070822&WS=1&tag=nicechoice-22" ></a><img src="https://ir-jp.amazon-adsystem.com/e/ir?t=nicechoice-22&l=li1&o=9&a=4798045659" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', 'JavaでWeb開発を行うなら欠かせないフレームワーク群「Spring」・・・', 'Java, Spring boot');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('2', 'Spring徹底入門 Spring FrameworkによるJavaアプリケーション開発', 'http://amzn.to/2vR5eqe', '<a href="https://www.amazon.co.jp/Spring%E5%BE%B9%E5%BA%95%E5%85%A5%E9%96%80-Spring-Framework%E3%81%AB%E3%82%88%E3%82%8BJava%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E9%96%8B%E7%99%BA-%E6%A0%AA%E5%BC%8F%E4%BC%9A%E7%A4%BENTT%E3%83%87%E3%83%BC%E3%82%BF/dp/4798142476/ref=as_li_ss_il?_encoding=UTF8&psc=1&refRID=BQGVDTVTXQXPY35VGEJM&linkCode=li2&tag=nicechoice-22&linkId=824c24e634618cbe8b70b9cf735119c3" target="_blank"><img border="0" src="//ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=4798142476&Format=_SL160_&ID=AsinImage&MarketPlace=JP&ServiceVersion=20070822&WS=1&tag=nicechoice-22" ></a><img src="https://ir-jp.amazon-adsystem.com/e/ir?t=nicechoice-22&l=li2&o=9&a=4798142476" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', 'Spring Frameworkの基礎から開発時の指針まで! 定番OSSフレームワークによるJavaシステム開発の入門書! ', 'Java, Spring');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('3', 'はじめてのSpring Boot―「Spring Framework」で簡単Javaアプリ開発', 'http://amzn.to/2wKgXmS', '<a href="https://www.amazon.co.jp/%E3%81%AF%E3%81%98%E3%82%81%E3%81%A6%E3%81%AESpring-Boot-Spring-Framework-%E3%81%A7%E7%B0%A1%E5%8D%98Java%E3%82%A2%E3%83%97%E3%83%AA%E9%96%8B%E7%99%BA-I-O-BOOKS/dp/4777518655/ref=as_li_ss_il?s=books&ie=UTF8&qid=1502344063&sr=1-4&keywords=Spring+boot&linkCode=li2&tag=nicechoice-22&linkId=06b539c096100ade75ccd0422ffdc4bf" target="_blank"><img border="0" src="//ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=4777518655&Format=_SL160_&ID=AsinImage&MarketPlace=JP&ServiceVersion=20070822&WS=1&tag=nicechoice-22" ></a><img src="https://ir-jp.amazon-adsystem.com/e/ir?t=nicechoice-22&l=li2&o=9&a=4777518655" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', '', 'Java, Spring boot');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('4', 'Gradle徹底入門 次世代ビルドツールによる自動化基盤の構築', 'http://amzn.to/2wKkjWR', '<a href="https://www.amazon.co.jp/Gradle%E5%BE%B9%E5%BA%95%E5%85%A5%E9%96%80-%E6%AC%A1%E4%B8%96%E4%BB%A3%E3%83%93%E3%83%AB%E3%83%89%E3%83%84%E3%83%BC%E3%83%AB%E3%81%AB%E3%82%88%E3%82%8B%E8%87%AA%E5%8B%95%E5%8C%96%E5%9F%BA%E7%9B%A4%E3%81%AE%E6%A7%8B%E7%AF%89-%E7%B6%BF%E5%BC%95-%E7%90%A2%E7%A3%A8/dp/4798136433/ref=as_li_ss_il?s=books&ie=UTF8&qid=1502344145&sr=1-10&keywords=Spring+boot&linkCode=li2&tag=nicechoice-22&linkId=54019225a9cc48449eb838562f6d03dd" target="_blank"><img border="0" src="//ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=4798136433&Format=_SL160_&ID=AsinImage&MarketPlace=JP&ServiceVersion=20070822&WS=1&tag=nicechoice-22" ></a><img src="https://ir-jp.amazon-adsystem.com/e/ir?t=nicechoice-22&l=li2&o=9&a=4798136433" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', 'Groovyベースのビルドツール「Gradle」は、SpringやHibernateなどの著名なOSSで利用されているほか・・・', 'Gradle, Groovy');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('5', 'Docker', 'http://amzn.to/2vGP2ay', '<a href="https://www.amazon.co.jp/Docker-Adrian-Mouat/dp/4873117763/ref=as_li_ss_il?_encoding=UTF8&psc=1&refRID=F7S1267DE8A2MQ7WMGFF&linkCode=li2&tag=nicechoice-22&linkId=1ee10e652a77bd74e79ee99896c004b7" target="_blank"><img border="0" src="//ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=4873117763&Format=_SL160_&ID=AsinImage&MarketPlace=JP&ServiceVersion=20070822&WS=1&tag=nicechoice-22" ></a><img src="https://ir-jp.amazon-adsystem.com/e/ir?t=nicechoice-22&l=li2&o=9&a=4873117763" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', '本書はオープンソースのコンテナ管理ソフトウェア、Dockerの基礎から応用までを網羅した総合的な解説書です。', 'Docker');

commit;

