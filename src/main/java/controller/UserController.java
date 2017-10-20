package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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



}