package net.willar.controller;

import com.alibaba.fastjson.JSONObject;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Yr on 2017/4/1.
 */
@Controller
@RequestMapping("/user")
public class LoginController {
    @RequestMapping("/login")
    private String redirectIndex(HttpServletRequest request, HttpServletResponse response){
        return  "login";
    }
    @RequestMapping("/checkUser")
    public String getLogin(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        response.setHeader("Content-Type","text/html");
        response.setHeader("Content-Disposition", "attachment;filename=aaa.doc");
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject = null;
        Map map = new HashMap();
        String userName = request.getParameter("userName");
        String usrePwd = request.getParameter("userPwd");
        if(null==userName&&"".equals(userName)){
            map.put("errCode",1);
            map.put("errMssage","param null");
            map.put("data",null);
        //    jsonArray.add(map);
            jsonObject.put("map",map);
            request.setAttribute("map",map);
            return "login";
        }
        if(null==usrePwd&&"".equals(usrePwd)){
            map.put("errCode",2);
            map.put("errMssage","param null");
            map.put("data",null);
            //    jsonArray.add(map);
            jsonObject.put("map",map);
            request.setAttribute("map",map);
            return "login";
        }
        if(userName!="123"){
            map.put("errCode",3);
            map.put("errMssage","param is not right");
            map.put("data",null);
            //    jsonArray.add(map);
            jsonObject.put("map",map);
            request.setAttribute("map",map);
            return "login";
        }
        if(usrePwd!="123"){
            map.put("errCode",4);
            map.put("errMssage","param is not right");
            map.put("data",null);
            //    jsonArray.add(map);
            jsonObject.put("map",map);
            request.setAttribute("map",map);
            return "login";
        }
        return "index";
    }
}
