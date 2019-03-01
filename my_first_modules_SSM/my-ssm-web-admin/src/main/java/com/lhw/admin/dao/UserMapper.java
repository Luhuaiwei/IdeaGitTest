package com.lhw.admin.dao;

import com.lhw.entity.User;
import com.lhw.vo.PageVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    User getUserByUserName(String username);

    List<User> getUserByPage(PageVo pageVo);

    int getUserNum(PageVo pageVo);

    int delUserById(Long uid);

    int delUsersById(Long[] array);
}
