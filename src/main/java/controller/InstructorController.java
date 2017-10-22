package controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InstructorController {

    @RequestMapping(value = "/TurnToManagePage",method = RequestMethod.GET)
    public ModelAndView turnToManagePage()
    {
 return new ModelAndView("dashboard");
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
