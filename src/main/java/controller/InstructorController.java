package controller;


import domain.discussion;
import mapping.DiscussionMapperI;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import util.MyBatisUtil;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
public class InstructorController {

    @RequestMapping(value = "/TurnToManagePage",method = RequestMethod.GET)
    public ModelAndView turnToManagePage()
    {
 return new ModelAndView("dashboard");
   }


    @RequestMapping(value = "/GetAllDiscussionByInstructor", method = RequestMethod.POST)
    public @ResponseBody List<discussion> getAllDiscussionByInstructor(String username)
    {
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        DiscussionMapperI mapper = sqlSession.getMapper(DiscussionMapperI.class);

        List<discussion> ser=mapper.getDiscussionsByInstructor(username);

        sqlSession.close();
        return ser;



    }


public String getCurrentDate()
{
    Locale.setDefault(Locale.ENGLISH);
    SimpleDateFormat df1 = new SimpleDateFormat("MMM dd,yyyy");//设置日期格式

    SimpleDateFormat df2 = new SimpleDateFormat("HH:mm:ss a");
    String str1=df1.format(new Date());
    String str2=df2.format(new Date());

    System.out.println(str1+" at "+str2);
    return str1+" at "+str2;
}
    @RequestMapping(value = "/CreateDiscussion")
    public void createDiscussion(String discussionname, String topic,String username, PrintWriter pw)
    {
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        DiscussionMapperI mapper = sqlSession.getMapper(DiscussionMapperI.class);
        discussion dis=new discussion();
        dis.setDiscussionname(discussionname);
        dis.setTopic(topic);
        dis.setInstructor(username);
        dis.setDate(getCurrentDate());
        int a=mapper.add(dis);
        System.out.println("我真的很想知道你是啥？？？？    "+a);

    }

    @RequestMapping(value = "/LoadInstructorsData",method = RequestMethod.GET)
    public ModelAndView loadInstructorsData()
    {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/TurnToCreatePage",method = RequestMethod.GET)
    public ModelAndView turnToCreatePage()
    {
        return new ModelAndView("discussionform");
    }
}
