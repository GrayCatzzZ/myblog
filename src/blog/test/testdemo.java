package blog.test;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import blog.mapper.ArticleMapper;
import blog.mapper.IndexMapper;
import blog.mapper.UserMapper;
import blog.pojo.Article;
import blog.pojo.Category;
import blog.pojo.Comment;
import blog.pojo.User;

public class testdemo {
	private ApplicationContext ac;
	

	@Test
	public void test() {
		
		
		 ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ArticleMapper articleMapper = ac.getBean(ArticleMapper.class);

		List<Article> findArticelForPageBean = articleMapper.findArticelForPageBean(0, 10);
		for (Article article : findArticelForPageBean) {
//			System.out.println(article.getTitle());
//			System.out.println(article.getContent());
			System.out.println(article.getCategory().getCat_id());
		}
		
	}
		@Test
		public void test1() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			UserMapper userMapper = ac.getBean(UserMapper.class);
			
			User user = new User();
			user.setUser_password("123");
			user.setUser_name("123");
			int login = userMapper.userLogin(user);
			System.out.println(login);
			
	}
		
		@Test
		public void test6() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			UserMapper userMapper = ac.getBean(UserMapper.class);
			
			userMapper.queryUser("123456qqq");
			
	}
		
		
		@Test
		public void test2() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			IndexMapper indexMapper = ac.getBean(IndexMapper.class);
			
			List<Category> category = indexMapper.getCategory();
			for (Category category2 : category) {
				System.out.println(category2.getCat_id());
				System.out.println(category2.getCat_name());
			}
			
	}
		
		
		@Test
		public void test3() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			ArticleMapper mapper = ac.getBean(ArticleMapper.class);
			
			Article article = mapper.getArticleById(2);
			Category category = article.getCategory();
			System.out.println(category.getCat_name());
	}
	
		
		@Test
		public void test7() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			ArticleMapper mapper = ac.getBean(ArticleMapper.class);
			Comment comment = new Comment();
			comment.setUser_id(14);
			comment.setComment("ce");
			mapper.saveComment(comment);
	}
		
		
		@Test
		public void test8() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			ArticleMapper mapper = ac.getBean(ArticleMapper.class);
			List<Comment> comment = mapper.findComment();
			for (Comment comment2 : comment) {
				System.out.println(comment2.getComment());
				System.out.println(comment2.getUser().getUser_name());
			}
	}
		
		@Test
		public void test4() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			IndexMapper mapper = ac.getBean(IndexMapper.class);
			
			List<Category> category = mapper.getCategory();
			for (Category category2 : category) {
				System.out.println(category2.getCat_id());
				System.out.println(category2.getCat_count());
			}
	}
	
		
		@Test
		public void test5() {
			
			
			ac = new ClassPathXmlApplicationContext("applicationContext.xml");
			ArticleMapper mapper = ac.getBean(ArticleMapper.class);
			Map article = new HashMap();
			article.put("cat_id", "1");
			article.put("title", "ceshi2");
			article.put("content", "ceshi2");
			
			mapper.writeBlog(article);
	}

}
