package com.lhw.admin.web.controller;

import com.lhw.admin.service.UserService;
import com.lhw.vo.BaseResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("admin")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "delone",method = RequestMethod.GET)
    @ResponseBody
    public BaseResult delOne(String uid){
        boolean result = userService.delUserById(uid);
        if (result){
            BaseResult baseResult = BaseResult.success("删除成功");
            return baseResult;
        }else{
            BaseResult baseResult = BaseResult.fail("删除失败");
            return baseResult;
        }
    }

    @RequestMapping(value = "delmany",method = RequestMethod.GET)
    @ResponseBody
    public  BaseResult delMany(String ids){
        boolean result = userService.delUsersById(ids);
        if (result){
            BaseResult baseResult = BaseResult.success("删除成功");
            return baseResult;
        }else{
            BaseResult baseResult = BaseResult.fail("删除失败");
            return baseResult;
        }
    }

}
