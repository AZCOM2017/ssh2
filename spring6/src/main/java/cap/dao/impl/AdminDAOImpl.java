package cap.dao.impl;

import cap.dao.AdminDAO;

public class AdminDAOImpl implements AdminDAO {

    @Override

    public String sayHi() {
        return "欢迎CZ2017来到Spring世界";
    }
}