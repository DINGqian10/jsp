package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
 private ArrayList<String>zhuangTai;
 private HashMap<String,ArrayList<String>>tiMu;
	public Status() {
		//初始化值
		zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		     //情况添加
		     String qingkuang="没有和宠物宝宝玩耍";
		     zhuangTai.add(qingkuang);
		     //选项添加
		     String xuanxiang1="我在看电视";
		     String xuanxiang2="我在打游戏";
		     String xuanxiang3="我在给你买东西";
		     String xuanxiang4="我在工作";
		     String xuanxiang5="我睡着了";
		     String xuanxiang6="我和朋友出去玩了";
		     ArrayList<String> temp = new ArrayList<String>();
		     //生成中间变量
		     temp.add(xuanxiang1);
		     temp.add(xuanxiang2);
		     temp.add(xuanxiang3);
		     temp.add(xuanxiang4);
		     temp.add(xuanxiang5);
		     temp.add(xuanxiang6);
		     //将情况和选项放入hash表
		     tiMu.put(qingkuang, temp);
	}
	public  ArrayList<String> getzhuangTai(){
		return zhuangTai;
	}
	public void setzhuangTai(ArrayList<String>zhuangTai){
		this.zhuangTai = zhuangTai;
	}
	public HashMap<String,ArrayList<String>>getTiMu(){
		     return tiMu;
	}

}

