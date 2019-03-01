package com.lhw.admin.service.impl;

import com.lhw.admin.dao.UserMapper;
import com.lhw.admin.service.UserService;
import com.lhw.entity.User;
import com.lhw.vo.PageInfo;
import com.lhw.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    /*登录相关*/
    public User getUserByName(String username){
        if(username!=null){
            return userMapper.getUserByUserName(username);
        }else{
            System.out.println("用户名为空");
            return null;
        }

    }

    /*分页相关*/
    @Override
    public PageInfo<User> getUserByPage(PageVo pageVo) {
        if (pageVo!=null){
            if(pageVo.getLength()!=0 && pageVo.getTotalPage()!=0){
                List<User> users = userMapper.getUserByPage(pageVo);
                PageInfo<User> pageInfo = new PageInfo<>();
                pageInfo.setData(users);
                pageInfo.setRecordsTotal(pageVo.getTotalPage());
                pageInfo.setDraw(pageVo.getDraw());
                pageInfo.setRecordsFiltered(pageVo.getTotalPage());
                return pageInfo;
            }else{
                return null;
            }
        }else{
            System.out.println("pageVo中的length或totalpage属性为空");
            return null;
        }
    }

    @Override
    public int getUserNum(PageVo pageVo) {
        //pageVo允许为空
        return userMapper.getUserNum(pageVo);
    }

    /*删除相关*/
    @Override
    public boolean delUserById(String uid) {
        if(uid!=null){
            Long id = Long.parseLong(uid);
            int count = userMapper.delUserById(id);
            if(count>0){
                return true;
            }else{
                return false;
            }
        }else{
            System.out.println("uid为空");
            return false;
        }
    }

    @Override
    public boolean delUsersById(String id) {
        if(id!=null) {
            String[] ids = id.split(",");
            Long[] lids = new Long[id.length()];
            for (int i = 0; i < ids.length; i++) {
                lids[i] = Long.parseLong(ids[i]);
            }
            int count = userMapper.delUsersById(lids);
            if (count > 0) {
                return true;
            } else {
                return false;
            }
        }else{
            System.out.println("uid数组为空");
            return false;
        }
    }
}
