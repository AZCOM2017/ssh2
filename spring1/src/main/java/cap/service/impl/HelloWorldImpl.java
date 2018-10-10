package cap.service.impl;

import cap.service.HelloWorld;

public class HelloWorldImpl implements HelloWorld {

    @Override
    public String sayHi(String name) {
        return "欢迎你：" + name + "来到编程世界！！！";
    }
}