package Model;

import java.sql.*;
import java.util.ArrayList;
import java.util.concurrent.Callable;

public class CityDAO implements InterfaceCityDAO {

    private String jdbcUrl = "jdbc:mysql://localhost:3306/test3?userSSL=false";
    private String jdbcUser = "root";
    private String jdbcPassword = "hung30111995";

    public Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return connection;
    }

    public CityDAO() {
    }


    @Override
    public ArrayList<City> getAllCities() {
        ArrayList<City> cities = new ArrayList<>();
        String query = "{CALL show_ds_city()}";
        City city;
        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query);) {
            System.out.println(callableStatement);
            ResultSet resultSet = callableStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("city_name");
                String nation = resultSet.getString("nation");
                double area = resultSet.getDouble("area");
                int danso = resultSet.getInt("danso");
                double gdp = resultSet.getDouble("gdp");
                String description = resultSet.getString("description");

                city = new City(id, name, nation, area, danso, gdp, description);
                cities.add(city);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return cities;
    }

    public ArrayList<Country> getAllCountries() {
        ArrayList<Country> countries = new ArrayList<>();
        String query = "{CALL get_all_country()}";
        Country country;
        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query);) {
            System.out.println(callableStatement);
            ResultSet resultSet = callableStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("country_id");
                String name = resultSet.getString("country_name");
                country = new Country(id, name);
                countries.add(country);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return countries;
    }

    @Override
    public boolean addCity(City city) {
        boolean isAdded = false;
        String query = "{CALL insert_new_city(?,?,?,?,?,?)}";
        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query);) {
            System.out.println(callableStatement);
            callableStatement.setString(1, city.getCityName());
            callableStatement.setString(2, city.getNation());
            callableStatement.setDouble(3, city.getArea());
            callableStatement.setInt(4, city.getDanso());
            callableStatement.setDouble(5, city.getGdp());
            callableStatement.setString(6, city.getDescription());
            System.out.println(callableStatement);
            isAdded = callableStatement.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return isAdded;
    }

    @Override
    public City getCityById(int id) {
        City city = null;
        String query ="{CALL show_one_city(?)}";
        try(Connection connection = getConnection(); CallableStatement callableStatement = connection.prepareCall(query)){
            callableStatement.setInt(1,id);
            System.out.println(callableStatement);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                String name = resultSet.getString("city_name");
                String nation = resultSet.getString("nation");
                double area = resultSet.getDouble("area");
                int danso = resultSet.getInt("danso");
                double gdp = resultSet.getDouble("gdp");
                String description = resultSet.getString("description");

                city = new City(id,name,nation,area,danso,gdp,description);

            }

        }
        catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return city;
    }


    @Override
    public boolean deleteCity(int id) {
        boolean isDeleted = false;
        String query = "{CALL delete_city(?)}";
        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query);) {
            System.out.println(callableStatement);

            callableStatement.setInt(1, id);
            isDeleted = callableStatement.executeUpdate() > 0;


        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return isDeleted;

    }

    public boolean updateCity(City city) {
        boolean isUpdated = false;
        String query ="{CALL update_city(?,?,?,?,?,?,?)}";

        try (Connection connection = getConnection();
             CallableStatement callableStatement  = connection.prepareCall(query);) {
            System.out.println(callableStatement);
            callableStatement.setInt(1,city.getId());
            callableStatement.setString(2,city.getCityName());
            callableStatement.setString(3, city.getNation());
            callableStatement.setDouble(4,city.getArea());
            callableStatement.setInt(5,city.getDanso());
            callableStatement.setDouble(6,city.getGdp());
            callableStatement.setString(7,city.getDescription());

            isUpdated = callableStatement.executeUpdate()>0;


        } catch (SQLException e) {
            e.printStackTrace();
            e.getMessage();
        }
        return isUpdated;
    }

}
