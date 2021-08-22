DROP TABLE IF EXISTS blog_base;
CREATE TABLE blog_base(
    blog_id INT(6) NOT NULL AUTO_INCREMENT  COMMENT '博客Id' ,
    blog_name VARCHAR(120) NOT NULL   COMMENT '博客文章名' ,
    author VARCHAR(20)    COMMENT '作者' ,
    creation_date DATETIME    COMMENT '创建时间' ,
    last_updated_by VARCHAR(60)    COMMENT '最后更新人' ,
    last_updated_date DATETIME    COMMENT '最后更新时间' ,
    key_word VARCHAR(200)    COMMENT '关键字' ,
    PRIMARY KEY (blog_id)
)  COMMENT = '博客基本信息表';
CREATE INDEX blog_name_index ON blog_base(blog_name);

DROP TABLE IF EXISTS blog_mapping;
CREATE TABLE blog_mapping(
    mapping_value VARCHAR(200) NOT NULL   COMMENT '关键字属性' ,
    src_id VARCHAR(60) NOT NULL   COMMENT '关联' ,
    PRIMARY KEY (mapping_value,src_id)
)  COMMENT = '博客数据映射表';