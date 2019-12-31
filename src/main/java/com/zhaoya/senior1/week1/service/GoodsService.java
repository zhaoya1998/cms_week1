package com.zhaoya.senior1.week1.service;

import java.util.ArrayList;

import com.github.pagehelper.PageInfo;
import com.zhaoya.senior1.week1.domain.Brand;
import com.zhaoya.senior1.week1.domain.Goods;
import com.zhaoya.senior1.week1.domain.Type;
import com.zhaoya.senior1.week1.domain.Vo;

public interface GoodsService {

	PageInfo<Goods> getGoodsList(Vo vo, int pageNum);

	int insert(Goods goods);

	ArrayList<Brand> getBrandList();

	ArrayList<Type> getTypeList();

	ArrayList<Goods> look(Integer id);

	void del(String id);

	Goods getGoodsListById(Integer id);

	int update(Goods goods);

}
