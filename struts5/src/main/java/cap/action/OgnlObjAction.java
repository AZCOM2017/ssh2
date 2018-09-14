package cap.action;

import cap.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class OgnlObjAction extends ActionSupport {
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String ognlObj() {
        ActionContext ctx = ActionContext.getContext();
        ctx.getApplication().put("msg", "application信息");
        ctx.getSession().put("msg", "session信息");
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("msg", "request信息");
        user = new User();
        user.setUsername("cap");
        return SUCCESS;
    }
}
