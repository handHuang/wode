package cn.haha;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by BIG on 2017/9/15.
 */
@SpringBootApplication
@MapperScan(value = "cn.haha.mapper")
public class blog_finalApplication {

    public static void main(String[] args) {
        SpringApplication.run(blog_finalApplication.class, args);
    }
}
