package com.softwareexper.action;

import com.softwareexper.base.BaseAction;
import com.softwareexper.orm.SoftUser;

/**
 * 登录相关
 * @author 李志飞
 *
 */
public class UserAction extends BaseAction<SoftUser>{

	public String login(){
		return "loginsuccess";
	}
}
