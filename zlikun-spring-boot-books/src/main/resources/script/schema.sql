-- 用户表
DROP TABLE IF EXISTS TBL_USER ;
CREATE TABLE IF NOT EXISTS TBL_USER (
  ID INT AUTO_INCREMENT PRIMARY KEY ,
  NAME VARCHAR(32) NOT NULL COMMENT '用户姓名' ,
  MOBILE CHAR(11) NOT NULL UNIQUE COMMENT '用户手机' ,
  EMAIL VARCHAR(128) NOT NULL UNIQUE COMMENT '用户邮箱' ,
  PASSWORD CHAR(64) NOT NULL COMMENT '用户密码，使用SHA-256加密' ,
  CTIME DATETIME NOT NULL COMMENT '用户创建时间'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

-- 图书表
DROP TABLE IF EXISTS TBL_BOOK ;
CREATE TABLE IF NOT EXISTS TBL_BOOK (
  ID INT AUTO_INCREMENT PRIMARY KEY ,
  NAME VARCHAR(256) NOT NULL COMMENT '图书名称' ,
  ISBN CHAR(13) NOT NULL UNIQUE COMMENT '图书ISBN号：图书产品代码“978”，组号(国家、地区、语言的代号)，出版者号，书序号和检验码几部分共同组成' ,
  PRICE FLOAT NOT NULL COMMENT '图书定价' ,
  CTIME DATETIME NOT NULL COMMENT '图书录入时间'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

-- 借书表
DROP TABLE IF EXISTS TBL_BORROW ;
CREATE TABLE IF NOT EXISTS TBL_BORROW (
  ID INT AUTO_INCREMENT PRIMARY KEY ,
  USER_ID INT NOT NULL COMMENT '借书人用户ID' ,
  BOOK_ID INT NOT NULL COMMENT '借出图书ID' ,
  CTIME DATETIME NOT NULL COMMENT '借书时间' ,
  DURING INT NOT NULL COMMENT '借书时间时，单位：秒' ,
  RETURN_TIME DATETIME COMMENT '归还时间(实际)'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;
