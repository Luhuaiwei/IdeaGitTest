package com.lhw.admin.service;

import com.lhw.entity.User;
import com.lhw.vo.PageInfo;
import com.lhw.vo.PageVo;

public interface UserService {


    User getUserByName(String username);

    PageInfo<User> getUserByPage(PageVo pageVo);

    int getUserNum(PageVo pageVo);

    boolean delUserById(String uid);

    boolean delUsersById(String ids);
}
