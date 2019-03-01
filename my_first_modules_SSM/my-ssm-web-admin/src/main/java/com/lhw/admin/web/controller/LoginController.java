package com.lhw.admin.web.controller;

import com.lhw.admin.service.UserService;
import com.lhw.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("admin")
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "login",method = RequestMethod.POST)
    public String login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = userService.getUserByName(request.getParameter("username"));
        if(user!=null){
            if(request.getParameter("password").equals(user.getPassword())){
                request.getSession().setAttribute("user",user);
                response.sendRedirect("/admin/index");
                System.out.println("登录成功");
            }else{
                System.out.println("登录失败");
            }
        }else{
            System.out.println("找不到用户名");
        }
        /*登录失败后应该还得提示登录失败并重新跳转到登录界面*/

        return null;
    }

    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String login(){
        return "user/login";
    }
}
