package com.ta.dsg.Dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ta.dsg.Vo.testVO;

@Repository
public class testDaoImpl implements testDao{
	
	
	@Autowired
	private SqlSession sql;

	private static final String namespace="com.ta.dsg.testMapper";

	@Override
	public List<testVO> select() {
		return sql.selectList(namespace+".select");
	}
	
	

}
