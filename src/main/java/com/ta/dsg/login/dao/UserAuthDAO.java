package com.ta.dsg.login.dao;

import org.mybatis.spring.SqlSessionTemplate; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ta.dsg.login.vo.CustomUserDetails;



@Repository("userAuthDAO")
public class UserAuthDAO {
    
    @Autowired
    private SqlSessionTemplate sqlSession;
 
    public CustomUserDetails getUserById(String username) {
        return sqlSession.selectOne("user.selectUserById", username);
    }
 
}


