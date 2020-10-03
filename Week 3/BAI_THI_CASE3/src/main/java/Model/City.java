package Model;

public class City {
    private int id;
    private String cityName;
    private String nation;
    private double area ;
    private int danso;
    private double gdp ;
    private String  description;

    public City(){}

    public City(int id, String cityName, String nation, double area, int danso, double gdp, String description) {
        this.id = id;
        this.cityName = cityName;
        this.nation = nation;
        this.area = area;
        this.danso = danso;
        this.gdp = gdp;
        this.description = description;
    }

    public City(String cityName, String nation, double area, int danso, double gdp, String description) {
        this.cityName = cityName;
        this.nation = nation;
        this.area = area;
        this.danso = danso;
        this.gdp = gdp;
        this.description = description;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public int getDanso() {
        return danso;
    }

    public void setDanso(int danso) {
        this.danso = danso;
    }

    public double getGdp() {
        return gdp;
    }

    public void setGdp(double gdp) {
        this.gdp = gdp;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
