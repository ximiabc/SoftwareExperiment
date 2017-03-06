package com.softwareexper.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.softwareexper.service.SoftBannerService;
import com.softwareexper.service.SoftCenterService;
import com.softwareexper.service.SoftDeviceService;
import com.softwareexper.service.SoftImgService;
import com.softwareexper.service.SoftLabService;
import com.softwareexper.service.SoftNewsService;
import com.softwareexper.service.SoftReportService;
import com.softwareexper.service.SoftRulesService;
import com.softwareexper.service.SoftTeacherService;
import com.softwareexper.service.SoftUserService;

public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	protected T model;
	public BaseAction(){
		try{
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	protected int pageNum = 1;

	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	//获取模型驱动
	public T getModel(){
		return model;
	}
	
	
	
	/**
	 * 注入所有的service
	 */
	@Resource
	protected SoftUserService softUserService;
	@Resource
	protected SoftBannerService softBannerService;
	@Resource
	protected SoftImgService softImgService;
	@Resource
	protected SoftNewsService softNewsService;
	@Resource
	protected SoftCenterService softCenterService;
	@Resource
	protected SoftLabService softLabService;
	@Resource
	protected SoftTeacherService teacherService;
	@Resource
	protected SoftReportService softReportService;
	@Resource
	protected SoftRulesService softRulesService;
	@Resource
	protected SoftDeviceService softDeviceService;
	
}
