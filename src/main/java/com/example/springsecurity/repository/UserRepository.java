package com.example.springsecurity.repository;

import com.example.springsecurity.model.entity.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface UserRepository {
    @Select("SELECT * FROM users WHERE name = #{name}")
    UserInfo getUserByUserName(@Param("name") String name );

//    @Select("INSERT INTO users (name, password, email, role) VALUES (#{info.name}, #{info.password}, #{info.email}, #{info.role}) RETURNING *")
//    Integer saveUser(@Param("info") UserRequest userRequest);

    @Select("SELECT * FROM users WHERE name = #{name}")
    UserInfo findByEmail(@Param("name") String name);
}
