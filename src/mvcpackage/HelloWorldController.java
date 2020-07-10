package mvcpackage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {


    //    need a controller method to show initial HTML form
    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }

    //    need a controller method to process HTML form
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloworld";
    }

    //    new controller method to read form data and add ti the model
    @RequestMapping("/processFormVersionTwo")
    public String letsShout(HttpServletRequest request, Model model) {

//    read the request from html form
        String name = request.getParameter("studentName");

//it can be done the next

//  public String letShout(@RequestParam("studentName") String name, Model model){

// annotation takes param from request and binding it to string variable

        name = name.toUpperCase();


//        create the message
        String res = "Alloha " + name;
//        add message to model
        model.addAttribute("message", res);
        return "helloworld";
    }
}
