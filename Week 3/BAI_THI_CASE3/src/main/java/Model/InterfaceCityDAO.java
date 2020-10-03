package Model;

import java.util.ArrayList;

public interface InterfaceCityDAO {
    public ArrayList<City> getAllCities();

    public City getCityById(int id);

    public boolean addCity(City city);

    public boolean updateCity(City city);

    public boolean deleteCity(int id);

}

