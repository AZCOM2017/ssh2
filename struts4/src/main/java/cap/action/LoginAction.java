package cap.action;

import cap.bean.Admin;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.*;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

@ParentPackage(value = "login")
@InterceptorRefs(@InterceptorRef("mystack"))
@Results({@Result(name = "success", location = "/index.jsp"), @Result(name = "error", location = "/error.jsp"),
        @Result(name = "input", location = "/login.jsp")})
public class LoginAction extends ActionSupport implements SessionAware {
    private Admin admin;
    private Map<String, Object> session;

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    @Action(value = "login", results = {@Result(name = "success", location = "/index.jsp"), @Result(name = "error", location = "/error.jsp")
            , @Result(name = "input", location = "/login.jsp")})
    public String login() {
        if (admin.getUsername().equals("cap") && admin.getPassword().equals("cap")) {
            session.put("admin", admin);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;

    }
}
