package mydefault;

/**
 * Created by keke on 2017/11/2.
 */
public class Artist {
    public Artist() {
        this.name = null;
        this.image = null;
        this.url = null;
    }

    public Artist(String name, String image, String url) {
        this.name = name;
        this.image = image;
        this.url = url;
    }

    private String name;
    private String image;
    private String url;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
