package cap.action;

import cap.bean.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private String register() {
        return SUCCESS;
    }
  /* public void validateRegister(){
        if (user.getUsername()==null||user.getUsername().equals("")){
            this.addFieldError("user.name",getText("name.null"));
        }
    }*/
}
