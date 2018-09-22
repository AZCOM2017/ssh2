package cap.action;

import cap.bean.User;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ControlAction extends ActionSupport {
    private Map<String, String> strMap = new HashMap<String, String>();
    private Map<String, User> userMap = new HashMap<String, User>();
    private List<User> userList = new ArrayList<User>();

    public String control() {
        strMap.put("1", "cap1");
        strMap.put("2", "cap2");
        strMap.put("3", "cap3");
        User u1 = new User(1, "cz1", "cz1");
        User u2 = new User(2, "cz2", "cz2");
        userMap.put("1", u1);
        userMap.put("2", u2);
        userList.add(u1);
        userList.add(u2);
        return SUCCESS;

    }


    public Map<String, String> getStrMap() {
        return strMap;
    }

    public void setStrMap(Map<String, String> strMap) {
        this.strMap = strMap;
    }

    public Map<String, User> getUserMap() {
        return userMap;
    }

    public void setUserMap(Map<String, User> userMap) {
        this.userMap = userMap;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
}
