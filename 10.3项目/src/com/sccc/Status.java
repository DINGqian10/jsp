package com.sccc;

import java.util.ArrayList;
import java.util.HashMap;

public class Status {
 private ArrayList<String>zhuangTai;
 private HashMap<String,ArrayList<String>>tiMu;
	public Status() {
		//��ʼ��ֵ
		zhuangTai=new ArrayList<String>();
		     tiMu= new HashMap<String, ArrayList<String>>();
		     //������
		     String qingkuang="û�кͳ��ﱦ����ˣ";
		     zhuangTai.add(qingkuang);
		     //ѡ�����
		     String xuanxiang1="���ڿ�����";
		     String xuanxiang2="���ڴ���Ϸ";
		     String xuanxiang3="���ڸ�������";
		     String xuanxiang4="���ڹ���";
		     String xuanxiang5="��˯����";
		     String xuanxiang6="�Һ����ѳ�ȥ����";
		     ArrayList<String> temp = new ArrayList<String>();
		     //�����м����
		     temp.add(xuanxiang1);
		     temp.add(xuanxiang2);
		     temp.add(xuanxiang3);
		     temp.add(xuanxiang4);
		     temp.add(xuanxiang5);
		     temp.add(xuanxiang6);
		     //�������ѡ�����hash��
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

