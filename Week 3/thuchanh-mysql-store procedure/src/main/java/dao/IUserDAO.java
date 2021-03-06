package dao;


import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public User getUserById(int id);

    public void insertUserStore(User user) throws SQLException;

    public void addUserTransaction(User user,int[] permission);

    //thuc hanh SQL khong dung Transaction
    public void insertUpdateWithoutTransaction();

    //thuc hanh SQL co su dung Transaction
    public void insertUpdateUseTransaction();


    //[Bài tập]Gọi MySql Stored Procedures từ JDBC
    public List<User> showAllUsersByStoreProcedures();

    public boolean updateUserByStoreProcedures(User user);



}

