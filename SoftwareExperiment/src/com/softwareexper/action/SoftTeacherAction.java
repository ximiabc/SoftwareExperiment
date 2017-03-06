package com.softwareexper.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.softwareexper.base.BaseAction;
import com.softwareexper.orm.SoftTeacher;
import com.softwareexper.tools.HqlHelper;
import com.softwareexper.tools.PageBean;

/**
 * 实验教学
 * @author 李志飞
 *
 */
public class SoftTeacherAction extends BaseAction<SoftTeacher>{

//	中心概括添加
	public String add() {
		return "add";
	}
	
//	更新
	public String update() {
		selectPage(true);
		return "update";
	}
	
//	历史
	public String history() {
		selectPage(false);
		return "history";
	}
	
//	显示详情--附带前后展示
	public String view() {
		List<SoftTeacher> list;
		if(teacherService.getById(getModel().getId()).isView()){
			list=teacherService.findAllByDateShow();
		}else{
			list=teacherService.findAllByDateUnShow();
		}
		return viewdeal(list);
	}
//	
	private String viewdeal(List<SoftTeacher> list){
		SoftTeacher[]news=new SoftTeacher[3];
		for(int i=0;i<list.size();i++){
			if(list.get(i).getId()==getModel().getId()){
				if(i-1>=0){
					news[0]=list.get(i-1);
				}else{
					news[0]=null;
				}
				news[1]=list.get(i);
				if(i+1<list.size()){
					news[2]=list.get(i+1);
				}else{
					news[2]=null;
				}
				ActionContext.getContext().put("beans",news[1]);
				ActionContext.getContext().put("up",news[0]);
				ActionContext.getContext().put("down",news[2]);
				countadd();
				return "view";
			}
		}
		ActionContext.getContext().put("beans",null);
		ActionContext.getContext().put("up",null);
		ActionContext.getContext().put("down",null);
		return "view";
	}
//	添加浏览量
	private void countadd(){
		SoftTeacher n=teacherService.getById(getModel().getId());
		n.setId(n.getId());
		n.setTitles(n.getTitles());
		n.setDate(n.getDate());
		n.setContext(n.getContext());
		n.setView(n.isView());
		n.setCount(n.getCount()+1);
		n.setPath(n.getPath());
		teacherService.update(n);
	}
	
//	分页查询-
	private void selectPage(boolean isview){
		PageBean pageBean=teacherService.getPageBean(pageNum,10, new HqlHelper(SoftTeacher.class, "center").
				addOrderByProperty("date", false).
				addWhereCondition("center.view = ?", isview));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
	}
	
//	设置为显示
	public String show(){
		SoftTeacher n=teacherService.getById(getModel().getId());
		n.setId(n.getId());
		n.setTitles(n.getTitles());
		n.setDate(n.getDate());
		n.setContext(n.getContext());
		n.setView(true);
		n.setCount(n.getCount()+1);
		n.setPath(n.getPath());
		teacherService.update(n);
		
		selectPage(true);
		return "update";
	}
	
//	设置为不显示
	public String unshow(){
		SoftTeacher n=teacherService.getById(getModel().getId());
		n.setId(n.getId());
		n.setTitles(n.getTitles());
		n.setDate(n.getDate());
		n.setContext(n.getContext());
		n.setView(false);
		n.setCount(n.getCount()+1);
		n.setPath(n.getPath());
		teacherService.update(n);
		
		selectPage(false);
		return "history";
	}
	
//	写入数据
	public String write() {
		SoftTeacher news=new SoftTeacher();
		news.setTitles(getModel().getTitles());
		news.setContext(getModel().getContext());
		news.setDate(new Date());
		news.setView(true);
		news.setCount(0);
		news.setPath(null);//暂时为空
		teacherService.save(news);
		return "add";
	}
	
//	前台功能*******************
	public String index() {
		selectPage(true);
		return "index";
	}
	public String desc() {
		selectPage(true);
		view();
		return "index";
	}
}
