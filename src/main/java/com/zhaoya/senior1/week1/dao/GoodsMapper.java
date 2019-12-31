package com.zhaoya.senior1.week1.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.zhaoya.senior1.week1.domain.Brand;
import com.zhaoya.senior1.week1.domain.Goods;
import com.zhaoya.senior1.week1.domain.Type;
import com.zhaoya.senior1.week1.domain.Vo;

public interface GoodsMapper {

	ArrayList<Goods> getGoodsList(Vo vo);

	int insert(Goods goods);

	ArrayList<Brand> getBrandList();

	ArrayList<Type> getTypeList();

	ArrayList<Goods> look(@Param("id") Integer id);

	void del(@Param("id") String id);

	Goods getGoodsListById(@Param("id") Integer id);

	int update(Goods goods);

}
