package cap.service.impl;

import cap.service.HelloWorld;

public class HelloWorldImpl implements HelloWorld {
    @Override
    public String sayHi(String name) {
        return "欢迎你学习Spring:" + name;
    }
}
