package com.zhaoya.senior1.week1.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;
import javax.crypto.AEADBadTagException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.zhaoya.senior1.week1.domain.Brand;
import com.zhaoya.senior1.week1.domain.Goods;
import com.zhaoya.senior1.week1.domain.Type;
import com.zhaoya.senior1.week1.domain.Vo;
import com.zhaoya.senior1.week1.service.GoodsService;

@Controller
public class GoodsController {

	@Resource
	private GoodsService service;
	
	@RequestMapping("list")
	public String list(Model m,Vo vo,@RequestParam(defaultValue ="1")int pageNum) {
		PageInfo<Goods> info=service.getGoodsList(vo,pageNum);
		m.addAttribute("info", info);
		m.addAttribute("vo", vo);
		return "list";
	}
	
	@ResponseBody
	@RequestMapping("getBrandList")
	public ArrayList<Brand> getBrandList() {
		
		return service.getBrandList();
	}

	@ResponseBody
	@RequestMapping("getTypeList")
	public ArrayList<Type> getTypeList() {

		return service.getTypeList();
		
	}

	@GetMapping("add")
	public String add() {
		return "add";
	}

	@ResponseBody
	@PostMapping("add")
	public boolean add(Goods goods, MultipartFile file) {
		if (null != file && !file.isEmpty()) {
			String path = "e:/cms/pic/";

			String oldfileName = file.getOriginalFilename();
			String fileName = UUID.randomUUID() + oldfileName.substring(oldfileName.lastIndexOf("."));
			File f = new File(path, fileName);
			try {
				file.transferTo(f);
				goods.setPic(fileName);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return service.insert(goods) > 0;
	}
	
	@RequestMapping("look")
	public String look(Model m,Integer id) {
		ArrayList<Goods> list=service.look(id);
		m.addAttribute("list", list);
		return "look";
	}
	
	@ResponseBody
	@RequestMapping("del")
	public boolean del(String id) {
		try {
			service.del(id);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	@RequestMapping("toUpdate")
	public String toUpdate(Integer id,Model m) {
		Goods goods=service.getGoodsListById(id);
		m.addAttribute("goods", goods);
		return "update";
	}

	@ResponseBody
	@PostMapping("update")
	public boolean update(Goods goods, MultipartFile file) {
		if (null != file && !file.isEmpty()) {
			String path = "e:/cms/pic/";

			String oldfileName = file.getOriginalFilename();
			String fileName = UUID.randomUUID() + oldfileName.substring(oldfileName.lastIndexOf("."));
			File f = new File(path, fileName);
			try {
				file.transferTo(f);
				goods.setPic(fileName);
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return service.update(goods) > 0;
	}
	
	
}
