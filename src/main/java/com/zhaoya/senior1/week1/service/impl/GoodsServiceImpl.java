package com.zhaoya.senior1.week1.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhaoya.senior1.week1.dao.GoodsMapper;
import com.zhaoya.senior1.week1.domain.Brand;
import com.zhaoya.senior1.week1.domain.Goods;
import com.zhaoya.senior1.week1.domain.Type;
import com.zhaoya.senior1.week1.domain.Vo;
import com.zhaoya.senior1.week1.service.GoodsService;
@Service
public class GoodsServiceImpl implements GoodsService{

	@Resource
	private GoodsMapper mapper;

	@Override
	public PageInfo<Goods> getGoodsList(Vo vo, int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, 3);
		ArrayList<Goods> list=mapper.getGoodsList(vo);
		return new PageInfo<Goods>(list);
	}

	@Override
	public int insert(Goods goods) {
		// TODO Auto-generated method stub
		return mapper.insert(goods);
	}

	@Override
	public ArrayList<Brand> getBrandList() {
		// TODO Auto-generated method stub
		return mapper.getBrandList();
	}

	@Override
	public ArrayList<Type> getTypeList() {
		// TODO Auto-generated method stub
		return mapper.getTypeList();
	}

	@Override
	public ArrayList<Goods> look(Integer id) {
		// TODO Auto-generated method stub
		return mapper.look(id);
	}

	@Override
	public void del(String id) {
		// TODO Auto-generated method stub
		mapper.del(id);
	}

	@Override
	public Goods getGoodsListById(Integer id) {
		// TODO Auto-generated method stub
		return mapper.getGoodsListById(id);
	}

	@Override
	public int update(Goods goods) {
		// TODO Auto-generated method stub
		return mapper.update(goods);
	}
	
	
}
