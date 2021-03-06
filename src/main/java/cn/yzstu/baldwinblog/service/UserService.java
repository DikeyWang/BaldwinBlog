package cn.yzstu.baldwinblog.service;

import cn.yzstu.baldwinblog.bean.User;
import cn.yzstu.baldwinblog.service.baseinterface.DataBaseService;
import cn.yzstu.common.Criteria;
import com.alibaba.fastjson.JSONObject;

import java.util.Map;

/**
 * @描述
 * @Author Baldwin
 * @E-Mail DikeyWang@163.com || baldwin@chancellorhk.com
 * @Time 2019/12/11 20:52
 * @Other
 */
public interface UserService extends DataBaseService<User> {

    Criteria criteria = new Criteria();

    JSONObject doLogin(Map<String, String> paramMap);

    JSONObject checkEmail(String userEmail);
}
