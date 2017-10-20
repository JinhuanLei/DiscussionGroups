package controller;

import domain.account;
import mapping.AccountMapperI;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import util.MyBatisUtil;

import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

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
    @RequestMapping(value = "/TurnToMainPage", method = RequestMethod.GET)
    public ModelAndView turnToMainPage()
    {
        return new ModelAndView("index");

    }
    @RequestMapping(value = "/loginFunction",method = RequestMethod.POST)
    public void login(HttpSession hs, String username, String password,String usertype ,PrintWriter pw)
    {
         //System.out.println("submit"+username+password);
        SqlSession sqlSession = MyBatisUtil.getSqlSession(true);
        // 得到UserMapperI接口的实现类对象，UserMapperI接口的实现类对象由sqlSession.getMapper(UserMapperI.class)动态构建出来
        AccountMapperI mapper = sqlSession.getMapper(AccountMapperI.class);
        System.out.println(username);
        account a=mapper.getByUsername(username);
//        System.out.println(a.getPassword());
//        System.out.println(password);
//        System.out.println(a.getPassword().equals(password));
        System.out.println("usertype:"+ditinguishType(usertype) +usertype);

       System.out.println(a!=null&&a.getPassword().equals(password)&&a.getType()==ditinguishType(usertype));
        if(a!=null&&a.getPassword().equals(password)&&a.getType()==ditinguishType(usertype))     //a.getPassword()==password     wrong??
        {

                String x = "0";
                hs.setAttribute("username", username);
                hs.setAttribute("usertype", a.getType());
            System.out.println("成功");
                pw.write(x);
        }
        else
        {
            String x="-1";
            pw.write(x);
            //System.out.println("Please enter correct username and password");
        }

        sqlSession.close();
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