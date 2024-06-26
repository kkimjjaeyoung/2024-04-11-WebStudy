package com.sist.main;

import javax.lang.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;

import com.sist.dao.*;

public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MainClass mc=new MainClass();
		mc.foodData();
	}
	public void foodData() {
		FoodDAO dao=FoodDAO.newInstance();
		try {
			int k=1;
			for(int i=1; i<=347; i++) {
				try {
				Document doc=Jsoup.connect("https://www.menupan.com/restaurant/bestrest/bestrest.asp?page="+i+"&trec=8674&pt=rt").get();
				Elements link=doc.select("ul.list p.listName a");
				for(int j=0; j<link.size();j++) {					
					System.out.println(link.get(j).attr("herf"));
					String url="https://www.menupan.com"+link.get(j).attr("herf");			//링크
					System.out.println("업체번호:"+k++);
					//상세보기 이동
					 //상세보기 이미지
					Document doc2=Jsoup.connect(url).get();
					Element poster=doc2.selectFirst("div.areaThumbnail ul#id_restphoto_list_src img#restphoto_img_0");
					System.out.println(poster.attr("src"));
					 //상세보기 이름
					Element name=doc2.selectFirst("div.areaBasic dd.name");
					System.out.println(name.text().substring(0, name.text().indexOf("[")));
					 //상세보기 음식 종류
					Element type=doc2.selectFirst("div.areeBasic dd.type");
					System.out.println(type.text());
					 //상세보기 전화번호
					Element phone=doc2.selectFirst("div.areeBasic dd.tell");
					System.out.println(type.text());
					 //상세보기 주소
					Element address=doc2.selectFirst("div.areeBasic dd.add1");
					System.out.println(type.text());
					 //상세보기 평점
					Element score=doc2.selectFirst("div.areeBasic dd.total");
					System.out.println(type.text());
					 //상세보기 테마
					Element theme=doc2.selectFirst("div.areeBasic dd.total");
					System.out.println(theme.text());
					 //상세보기 리뷰
					Element content=doc2.selectFirst("div.article div#info_ps_f");
					System.out.println(content.text());
					System.out.println(content.text());
					System.out.println();
					
					//db에 넣기
					FoodVO vo=new FoodVO();
					vo.setName(name.text().substring(0, name.text().indexOf("[")));
					vo.setPhone(phone.text());
					vo.setType(type.text());
					vo.setAddress(address.text());	
					vo.setTheme(theme.text());
					vo.setPoster(poster.attr("src"));
					vo.setContent(content.text());
					vo.setScore(Double.parseDouble(score.text()));
					dao.foodInsert(vo);
					}
				}catch (Exception ex) {
						// TODO: handle exception
				}
			}
			System.out.println("저장 완료");
		}catch (Exception ex) {
			// TODO: handle exception
		}
		}
}

		

