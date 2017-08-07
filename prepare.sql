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

INSERT INTO `sbtdb`.`user_info` (`user_id`, `username`, `password`, `email`) VALUES ('1', 'sbt', 'sbt', 'sbt@localhost');

INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('1', 'spring boot book', 'http://aaa', 'http:xxx', 'aaaa', 'java,spring,spring boot');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('2', 'spring book', 'http://bbb', 'http:xxx', 'aaaa', 'java spring');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('3', 'java book', 'http://ccc', 'http:xxx', 'aaaa', 'java');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('4', 'javascript book', 'http://ddd', 'http:xxx', 'aaaa', 'javascript');
INSERT INTO `sbtdb`.`book` (`book_id`, `book_name`, `link`, `img`, `description`, `tag`) VALUES ('5', 'SQL book', 'http://eee', 'http:xxx', 'aaaa', 'sql');

commit;

