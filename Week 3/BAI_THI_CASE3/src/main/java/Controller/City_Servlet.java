package Controller;

import Model.City;
import Model.CityDAO;
import Model.Country;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


@WebServlet(name = "City_Servlet",urlPatterns = "/city")
public class City_Servlet extends HttpServlet {
    CityDAO cityDAO = new CityDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                addCity(request, response);
                break;
            case "edit":
                updateCity(request, response);
                break;

            case "delete":
                deleteCity(request, response);
                break;

            default:
                showListCity(request,response);
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                showListCountryInCreateForm(request, response);
                showCreateForm(request, response);

                break;
            case "delete":
                showDeleteCityForm(request, response);

                break;
            case "edit":
                showEditForm(request, response);
                break;

            case "detail":
                showDetailCity(request, response);
                break;
            default:
                showListCity(request,response);
                break;
        }
    }

    private void showListCity(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        ArrayList<City> cities;
        cities = cityDAO.getAllCities();

        request.setAttribute("listCity",cities);
        RequestDispatcher dispatcher = request.getRequestDispatcher("city/city.jsp");
        dispatcher.forward(request, response);

    }

    private void showListCountryInCreateForm(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Country> countries;
        countries = cityDAO.getAllCountries();

        request.setAttribute("listCountries",countries);
        RequestDispatcher dispatcher = request.getRequestDispatcher("city/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("city/create.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        City city = cityDAO.getCityById(id);
        request.setAttribute("city",city);

        ArrayList<Country> countries;
        countries = cityDAO.getAllCountries();
        request.setAttribute("listCountries",countries);


        RequestDispatcher dispatcher = request.getRequestDispatcher("city/edit.jsp");
        dispatcher.forward(request, response);
    }


    private void addCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            HttpSession session = request.getSession();

            boolean isAdded;
            String cityName = request.getParameter("name");
            String national = request.getParameter("national");
            double area = Double.parseDouble(request.getParameter("area"));
            int danso = Integer.parseInt(request.getParameter("danso"));
            double gdp = Double.parseDouble(request.getParameter("gdp"));
            String description = request.getParameter("description");
            City city = new City(cityName, national, area, danso, gdp, description);
            isAdded= cityDAO.addCity(city);


        if (isAdded){
            session.setAttribute("getAlert","notnull");
            session.setMaxInactiveInterval(2);
            try {
                showListCity(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }

        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("city/create.jsp");
            try {
                dispatcher.forward(request, response);

            } catch (NullPointerException | NumberFormatException e){
                dispatcher = request.getRequestDispatcher("city/error.jsp");
                dispatcher.forward(request, response);


            }
        }

    }

    private void deleteCity(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException{

        String id = request.getParameter("idDel");
        int id1 = Integer.parseInt(id);
        cityDAO.deleteCity(id1);

        ArrayList<City> cities = cityDAO.getAllCities();
        request.setAttribute("listCity",cities);
        RequestDispatcher dispatcher = request.getRequestDispatcher("city/city.jsp");
        dispatcher.forward(request, response);

    }

    private void showDeleteCityForm(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException{
        int id= Integer.parseInt(request.getParameter("idShow"));
        City city = cityDAO.getCityById(id);
        request.setAttribute("city",city);

        RequestDispatcher dispatcher = request.getRequestDispatcher("city/delete.jsp");
        dispatcher.forward(request, response);

    }

    private void updateCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        boolean isUpdated;
        City city;
        HttpSession session = request.getSession();

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String national = request.getParameter("national");
        double area = Double.parseDouble(request.getParameter("area"));
        int danso = Integer.parseInt(request.getParameter("danso"));
        double gdp = Double.parseDouble(request.getParameter("gdp"));
        String description = request.getParameter("description");
        city = new City(id,name,national,area,danso,gdp,description);
        isUpdated= cityDAO.updateCity(city);

        if (isUpdated){
            session.setAttribute("getAlert","notnull");
            session.setMaxInactiveInterval(2);
            showListCity(request, response);

        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("city/edit.jsp");
            dispatcher.forward(request, response);
        }



    }

    private void showDetailCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        City city = cityDAO.getCityById(id);

        request.setAttribute("city",city);
        RequestDispatcher dispatcher = request.getRequestDispatcher("city/detail.jsp");
        dispatcher.forward(request,response);

    }

}
