package com.lhw.admin.web.controller;

import com.lhw.admin.service.UserService;
import com.lhw.entity.User;
import com.lhw.vo.PageInfo;
import com.lhw.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class IndexController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String Index(){
        return "/admin/index";
    }

    @RequestMapping(value = "page",method = RequestMethod.GET)
    @ResponseBody
    public PageInfo<User> Page(HttpServletRequest request){
        String strDraw = request.getParameter("draw");
        String strStart = request.getParameter("start");
        String strLength = request.getParameter("length");
        String keyword = request.getParameter("keyword");
        int draw = strDraw == null ? 1 : Integer.parseInt(strDraw);
        int start = strStart == null ? 0 : Integer.parseInt(strStart);
        int length = strLength == null ? 10 : Integer.parseInt(strLength);

        PageVo pageVo = new PageVo();
        pageVo.setKeyword(keyword);
        pageVo.setStart(start);
        pageVo.setLength(length);
        pageVo.setDraw(draw);
        pageVo.setTotalPage(userService.getUserNum(pageVo));

        PageInfo<User> pageInfo = userService.getUserByPage(pageVo);
        request.getSession().setAttribute("users",pageInfo.getData());
        return pageInfo;
    }

}
