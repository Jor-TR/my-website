package com.joe.box.myblog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {
    @RequestMapping("/hello")
    @ResponseBody
    public String helloWorld(){
        return "welcome to Joe-jay's blog ^_^";
    }
}
