package datamapper;

import entity.Cupcake;
import java.util.ArrayList;
import entity.Team;
import entity.User;

public interface DataMapperInterface
{
//    public ArrayList<User> getTeamMembers(int team_id);
//    public ArrayList<Team> getTeams();
//    public Team getTeam(int id);
//    public Team getTeam(String teamname);
    public ArrayList<User> getUsers();
    public ArrayList<User> getUsers(String username);
    public User getUser(String username);
    public boolean deleteUser(String username);
    public boolean updateUser(User u);
    public boolean createUser(User u);
//    public ArrayList<Cupcake> getAllToppings();
//    public ArrayList<Cupcake> getAllBottoms();
}