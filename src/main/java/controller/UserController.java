package controller;

import domain.account;
import domain.discussion;
import domain.entry;
import mapping.AccountMapperI;
import mapping.DiscussionMapperI;
import mapping.EntryMapperI;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import util.MyBatisUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by dzkan on 2016/3/8.
 */
@Controller
public class UserController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index()
    {
        System.out.println("start mvc");
        return "index";
//        return "mainInterfaceJsp";
//        return "/index.jsp";
    }
    @RequestMapping(value = "/TurnToLoginPage", method = RequestMethod.GET)
    public ModelAndView turnToLoginPage()
    {
        return new ModelAndView("login");
//        return "mainInterfaceJsp";
//        return "/index.jsp";
    }

    @RequestMapping(value = "/TurnToDiscussionPage", method = RequestMethod.GET)
    public ModelAndView turnToDiscussionPage(@RequestParam("discussion") String discussion, HttpServletRequest request)
    {
        System.out.println("url传过来的discussion是"+discussion);
        request.setAttribute("discussion",discussion);
        return new ModelAndView("discussionpage");
//        return "mainInterfaceJsp";
//        return "/index.jsp";
    }

    @RequestMapping(value = "/LoadEntryData", method = RequestMethod.POST)
    public @ResponseBody List<entry> loadEntryData(String discussion)
    {
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        EntryMapperI mapper = sqlSession.getMapper(EntryMapperI.class);
        List<entry> list=mapper.getByDiscussion(discussion);
        System.out.println("size"+list.size());
          return list;
    }



    @RequestMapping(value = "/CreateEntry", method = RequestMethod.POST)
    public String createEntry(@RequestParam(value="file",required=false) MultipartFile file,@RequestParam("discussion") String discussion, @RequestParam("username") String username,
                              HttpServletRequest request)
{

    String pathRoot = request.getSession().getServletContext().getRealPath("");
    String path="";
    if(! file.isEmpty()){
        //生成uuid作为文件名称
        String uuid = UUID.randomUUID().toString().replaceAll("-","");
        //获得文件类型（可以判断如果不是图片，禁止上传）
        String contentType= file.getContentType();
        //获得文件后缀名称
        String imageName=contentType.substring(contentType.indexOf("/")+1);
        path="/upload/images/"+uuid+"."+imageName;
        try {
            file.transferTo(new File(pathRoot+path));
            System.out.println("成功");
        } catch (IOException e) {
            System.out.println(e);
        }
    }
    System.out.println(pathRoot+path);
    request.setAttribute("imagesPath", path);

    SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
    // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
    EntryMapperI mapper = sqlSession.getMapper(EntryMapperI.class);
    // return "/WEB-INF/index.jsp";
    //service ser = mapper.getServiceByID(1);
    entry ey=new entry();
    ey.setDate(getCurrentDate());
    ey.setDiscussion(discussion);
    ey.setEntryname(request.getParameter("entrytitle"));
    ey.setEntryinfer(request.getParameter("entryinfer"));
    ey.setImagepath(path);
    ey.setUsername(username);
int x=mapper.add(ey);
    return "discussionpage";
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
    @RequestMapping(value = "/TurnToMainPage", method = RequestMethod.GET)
    public ModelAndView turnToMainPage()
    {
        return new ModelAndView("index");

    }

    @RequestMapping(value = "/LoadSpecificDiscussionData")
    public @ResponseBody discussion loadSpecificDiscussionData(String discussion) {
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        DiscussionMapperI mapper = sqlSession.getMapper(DiscussionMapperI.class);
        // return "/WEB-INF/index.jsp";
        //service ser = mapper.getServiceByID(1);
        discussion dis=mapper.getDiscussionsByDiscussionname(discussion);

        sqlSession.close();
        return dis;

}

    @RequestMapping(value = "/LoadDiscussionData")
   public @ResponseBody
    List<discussion> loadDiscussionData() {
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        DiscussionMapperI mapper = sqlSession.getMapper(DiscussionMapperI.class);
        // return "/WEB-INF/index.jsp";
        //service ser = mapper.getServiceByID(1);
        List<discussion> ser=mapper.getAllDiscussions();
        int length=mapper.getAcountFromDiscussion();
        List<discussion> list = new ArrayList<discussion>(){{
            add(ser.get(length-1));
            add(ser.get(length-2));
            add(ser.get(length-3));
        }};

        sqlSession.close();
        return list;


    }


    @RequestMapping(value = "/loginFunction")
    public void userLogin(HttpSession hs, String username, String password,String usertype ,PrintWriter pw)
    {
         //System.out.println("submit"+username+password);
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        AccountMapperI mapper = sqlSession.getMapper(AccountMapperI.class);
        System.out.println(username);
        account a=mapper.getByUsername(username);
//        System.out.println(a.getPassword());
        System.out.println(password);
//        System.out.println(a.getPassword().equals(password));
        System.out.println("usertype:"+ditinguishType(usertype) +usertype);

       System.out.println(a!=null&&a.getPassword().equals(password)&&a.getType()==ditinguishType(usertype));
//        sqlSession.close();
        if(a!=null&&a.getPassword().equals(password)&&a.getType()==ditinguishType(usertype))     //a.getPassword()==password     wrong??
        {

                String x = "0";
                hs.setAttribute("username", username);
                hs.setAttribute("usertype", a.getType());   //num
                hs.setAttribute("usertypename",usertype);  //
            System.out.println("login成功");
                pw.write(x);
        }
        else
        {
            String x="-1";
            System.out.println("失败");
            pw.write(x);
            //System.out.println("Please enter correct username and password");
        }



    }

    @RequestMapping(value = "/logoutFuntion")
    public String logout(HttpSession hs)
    {
        hs.invalidate();
        return "index";
    }

    public int  ditinguishType(String usertype)
    {
        if(usertype.equals("Beginners"))
        {
            return 4;
        }
        else if(usertype.equals("Intermediate User"))
        {
            return 5;
        }
        else if(usertype.equals("Expert User"))
        {
            return 6;
        }
        else if(usertype.equals("Instructor"))
        {
            return 3;
        }
        return -1;
    }
}