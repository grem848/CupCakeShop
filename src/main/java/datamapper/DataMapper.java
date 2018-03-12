package datamapper;

import entity.User;
//import entity.Team;
import java.util.ArrayList;
import dbconnector.DBConnector;
import entity.Bottom;
import entity.Cupcake;
import entity.Topping;
import java.sql.PreparedStatement;
import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataMapper implements DataMapperInterface
{
    private DBConnector dbc = new DBConnector();

    public DataMapper(DataSource ds)
    {
        dbc.setDataSource(ds);
    }

    
    @Override
    public ArrayList<User> getUsers()
    {
        ArrayList<User> users = new ArrayList();

        try
        {
            dbc.open();

            String sql = "select * from user";
            ResultSet resultset = dbc.executeQuery(sql);

            while (resultset.next())
            {
                String username = resultset.getString("username");
                String userpassword = resultset.getString("password");
                int userbalance = resultset.getInt("balance");
                boolean admin = resultset.getBoolean("admin");

                User u = new User(username, userpassword, userbalance, admin);

                users.add(u);
            }

            dbc.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return users;
    }

    /**
     * gets user.
     * blabla test.
     * @param un not null
     * @return 
     */
    @Override
    public ArrayList<User> getUsers(String un)
    {
        ArrayList<User> users = new ArrayList();

        try
        {
            dbc.open();

            String sql = "select * from user where username like '%" + un + "%'";
            ResultSet resultset = dbc.executeQuery(sql);

            while (resultset.next())
            {

                String username = resultset.getString("username");
                String userpassword = resultset.getString("password");
                int userbalance = resultset.getInt("balance");
                boolean admin = resultset.getBoolean("admin");

                User u = new User(username, userpassword, userbalance, admin);

                users.add(u);
            }

            dbc.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return users;
    }

    @Override
    public User getUser(String name)
    {
        try
        {
            dbc.open();

            String sql = "select * from user where username = '" + name + "'";
            ResultSet resultset = dbc.executeQuery(sql);

            while (resultset.next())
            {
                String username = resultset.getString("username");
                String userpassword = resultset.getString("password");
                int userbalance = resultset.getInt("balance");
                boolean admin = resultset.getBoolean("admin");

                return new User(username, userpassword, userbalance, admin);
            }

            dbc.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public boolean deleteUser(String username)
    {
        try
        {
            dbc.open();

//            String sql = "delete from team_user where user_id = " + id + ";";
//            dbc.executeUpdate(sql);

            String sql = "delete from user where username = " + "'" + username + "'" + ";";
            dbc.executeUpdate(sql);

            dbc.close();

            return true;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean updateUser(User u)
    {
        try
        {
            dbc.open();

            String sql = "update user set "
                    + "username = '" + u.getUsername() + "', "
                    + "password = '" + u.getPassword() + "', "
                    + "balance = '" + u.getBalance() + "', "
                    + "admin = '" + u.isAdmin() + "' "
                    + "where username = '" + u.getUsername() + "';";

            dbc.executeUpdate(sql);

            dbc.close();

            return true;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public boolean createUser(User u)
    {
        try
        {
            dbc.open();

            String sql = "insert into user values("
                    + "'" + u.getUsername() + "', "
                    + "'" + u.getPassword() + "', "
                    + "'" + u.getBalance() + "', "
                    + u.isAdmin() + ")";

            dbc.executeUpdate(sql);

            dbc.close();

            return true;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return false;
    }
    
    public boolean createCupcake(Cupcake c)
    {
        try
        {
            dbc.open();

            String sql = "insert into cupcakes values("
                    + "'" + c.getT()+ "', "
                    + "'" + c.getB()+ "', "
                    + "'" + c.getFullPrice()+ "')";

            dbc.executeUpdate(sql);

            dbc.close();

            return true;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return false;
    }
    
    public User validateUser(String username, String password)
    {
        User user = null;
        
        try
        {
            dbc.open();
            
            /*
            String sql = "select * from user where username = '" + username + "' and password = '" + password + "'";
            System.out.println("SQL: " + sql);
            ResultSet resultSet = dbc.executeQuery(sql);
            */
            
            //PreparedStatement
            String sql = "select * from user where username = ? and password = ?";
            PreparedStatement preparedStatement = dbc.preparedStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            
            if (resultSet.next())
            {
                username = resultSet.getString("username");
                boolean admin = resultSet.getInt("admin") > 0;
                int balance = resultSet.getInt("balance");
                user = new User(username, password,balance ,admin);
            }

            dbc.close();
        }
        catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return user;
    }
    
    public ArrayList<Topping> getAllToppings()
    {
        ArrayList<Topping> toppings = new ArrayList();

        try
        {
            dbc.open();

            String sql = "select * from toppings";
            ResultSet resultset = dbc.executeQuery(sql);

            while (resultset.next())
            {
                String topping = resultset.getString("topping");
                int price = resultset.getInt("price");

                Topping t = new Topping(topping, price);

                toppings.add(t);
            }

            dbc.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return toppings;
    }
    
    public ArrayList<Bottom> getAllBottoms()
    {
        ArrayList<Bottom> bottoms = new ArrayList();

        try
        {
            dbc.open();

            String sql = "select * from bottoms";
            ResultSet resultset = dbc.executeQuery(sql);

            while (resultset.next())
            {
                String bottom = resultset.getString("bottom");
                int price = resultset.getInt("price");

                Bottom b = new Bottom(bottom, price);

                bottoms.add(b);
            }

            dbc.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return bottoms;
    }
    
    
//    @Override
//    public ArrayList<User> getTeamMembers(int team_id)
//    {
//        ArrayList<User> users = new ArrayList();
//
//        try
//        {
//            dbc.open();
//
//            String sql = "select * from user, team_user where user.user_id = team_user.user_id and team_user.team_id = " + team_id;
//            ResultSet resultset = dbc.executeQuery(sql);
//
//            while (resultset.next())
//            {
//                int userid = resultset.getInt("user.user_id");
//                String username = resultset.getString("username");
//                String userpassword = resultset.getString("password");
//                boolean admin = resultset.getBoolean("admin");
//
//                User u = new User(userid, username, userpassword, admin);
//
//                users.add(u);
//            }
//
//            dbc.close();
//        }
//        catch (SQLException e)
//        {
//            e.printStackTrace();
//        }
//
//        return users;
//    }
//
//    @Override
//    public ArrayList<Team> getTeams()
//    {
//        ArrayList<Team> teams = new ArrayList();
//
//        try
//        {
//            dbc.open();
//
//            String sql = "select * from team";
//            ResultSet resultset = dbc.executeQuery(sql);
//
//            while (resultset.next())
//            {
//                int teamid = resultset.getInt("team_id");
//                String teamname = resultset.getString("teamname");
//
//                Team t = new Team(teamid, teamname);
//
//                teams.add(t);
//            }
//
//            dbc.close();
//        }
//        catch (SQLException e)
//        {
//            e.printStackTrace();
//        }
//
//        return teams;
//    }
//
//    @Override
//    public Team getTeam(int id)
//    {
//        try
//        {
//            dbc.open();
//
//            String sql = "select * from team where team_id = " + id;
//            ResultSet resultset = dbc.executeQuery(sql);
//
//            if (resultset.next())
//            {
//                int teamid = resultset.getInt("team_id");
//                String teamname = resultset.getString("teamname");
//
//                return new Team(teamid, teamname);
//            }
//
//            dbc.close();
//        }
//        catch (SQLException e)
//        {
//            e.printStackTrace();
//        }
//
//        return null;
//    }
//
//    @Override
//    public Team getTeam(String name)
//    {
//        try
//        {
//            dbc.open();
//
//            String sql = "select * from team where teamname = '" + name + "'";
//            ResultSet resultset = dbc.executeQuery(sql);
//
//            if (resultset.next())
//            {
//                int teamid = resultset.getInt("team_id");
//                String teamname = resultset.getString("teamname");
//
//                return new Team(teamid, teamname);
//            }
//
//            dbc.close();
//        }
//        catch (SQLException e)
//        {
//            e.printStackTrace();
//        }
//
//        return null;
//    }
}