package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
public class RecipeDAO {
   private static SqlSessionFactory ssf;
   static 
   {
	   ssf=CreateSqlSessionFactory.getSsf();
   }
   /*
    *   <select id="recipeHitTopData">
		    SELECT fno,name,poster,rownum 
		    FROM (SELECT fno,name,poster 
		    FROM project_recipe_house ORDER BY hit DESC)
		    WHERE rownum&lt;=12
		  </select>
		  <select id="recipeLikeTopData">
		    SELECT fno,name,poster,rownum 
		    FROM (SELECT fno,name,poster 
		    FROM project_recipe_house ORDER BY likecount DESC)
		    WHERE rownum&lt;=12
		  </select>
		  <select id="recipeJjimTopData">
		    SELECT fno,name,poster,rownum 
		    FROM (SELECT fno,name,poster 
		    FROM project_recipe_house ORDER BY jjimcount DESC)
		    WHERE rownum&lt;=12
		  </select>
    */
   // hit가 많은 맛집 
   public static List<RecipeVO> recipeHitTopData()
   {
	   List<RecipeVO> list=new ArrayList<RecipeVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("recipeHitTopData");
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
   }
   // like가 많은 맛집 
   public static List<RecipeVO> recipeLikeTopData()
   {
	   List<RecipeVO> list=new ArrayList<RecipeVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("recipeLikeTopData");
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
   }
   // jjim이 많은 맛집 
   public static List<RecipeVO> recipeJjimTopData()
   {
	   List<RecipeVO> list=new ArrayList<RecipeVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("recipeJjimTopData");
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
   }
   /*
    *   <select id="recipeListCount" resultType="int">
		    SELECT COUNT(*) FROM project_recipe_house
		  </select>
    */
   public static int recipeListCount()
   {
	   int count=0;
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   count=session.selectOne("recipeListCount");
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return count;
   }
   /*
    *    <select id="recipeListData" resultType="RecipeVO" parameterType="hashmap">
          SELECT fno,name,poster,num
          FROM (SELECT fno,name,poster,rownum as num 
          FROM (SELECT + INDEX_ASC(project_recipe_house fh_fno_pk)fno,name,poster 
		  FROM project_recipe_house))
		  WHERE num BETWEEN #{start} AND #{end}
		  </select>
		  <select id="recipeTotalPage" resultType="int">
		    SELECT CEIL(COUNT(*)/20.0) FROM project_recipe_house
		  </select>
    */
   public static List<RecipeVO> recipeListData(Map map)
   {
	   List<RecipeVO> list=new ArrayList<RecipeVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("recipeListData",map);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
   }
   public static int recipeTotalPage()
   {
	   int total=0;
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   total=session.selectOne("recipeTotalPage");
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return total;
   }
   /*
    *   <update id="recipeHitIncrement" parameterType="int">
		    UPDATE project_recipe_house SET
		    hit=hit+1
		    WHERE fno=#{fno}
		  </update>
		<select id="recipeDetailData" resultType="RecipeVO" parameterType="int">
		    SELECT fno,name,type,phone,address,score,theme,poster,images,time,parking,
		    content
		    FROM project_recipe_house
		    WHERE fno=#{fno}
		  </select>
    */
   public static RecipeVO recipeDetailData(int fno)
   {
	   RecipeVO vo=new RecipeVO();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   // 조회수 증가 
		   session.update("recipeHitIncrement",fno);
		   session.commit(); // insert,update,delete
		   
		   // 데이터 읽기 
		   vo=session.selectOne("recipeDetailData",fno);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return vo;
   }
   /*
    *    <select id="recipeFindListData" resultType="RecipeVO" parameterType="hashmap">
		    SELECT fno,name,poster,num
		    FROM (SELECT fno,name,poster,rownum as num 
		    FROM (SELECT + INDEX_ASC(project_recipe_house fh_fno_pk)fno,name,poster 
		    FROM project_recipe_house WHERE address LIKE '%'||#{ss}||'%'))
		    WHERE num BETWEEN #{start} AND #{end}
		  </select>
		  <select id="recipeFindTotalPage" resultType="int">
		    SELECT CEIL(COUNT(*)/20.0) FROM project_recipe_house
		    WHERE address LIKE '%'||#{ss}||'%'
		  </select>
    */
   public static List<RecipeVO> recipeFindListData(Map map)
   {
	   List<RecipeVO> list=new ArrayList<RecipeVO>();
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("recipeFindListData",map);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
   }
   public static int recipeFindTotalPage(String ss)
   {
	   int total=0;
	   SqlSession session=null;
	   try
	   {
		   session=ssf.openSession();
		   total=session.selectOne("recipeFindTotalPage",ss);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return total;
   }
   
   // 인근 맛집 
   /*
    *   <select id="recipeRearListData" resultType="RecipeVO" parameterType="string">
		    SELECT fno,name,poster,rownum
		    FROM (SELECT fno,name,poster 
		    FROM project_recipe_house WHERE address LIKE '%'||#{ss}||'%' ORDER BY fno ASC)
		    WHERE rownum&lt;=6
		  </select>
    */
   public static List<RecipeVO> recipeRearListData(String ss)
   {
	   List<RecipeVO> list=new ArrayList<RecipeVO>();
	   SqlSession session=null; //Connection
	   try
	   {
		   session=ssf.openSession();
		   list=session.selectList("recipeRearListData", ss);
	   }catch(Exception ex)
	   {
		   ex.printStackTrace();
	   }
	   finally
	   {
		   if(session!=null)
			   session.close();
	   }
	   return list;
   }
   
}