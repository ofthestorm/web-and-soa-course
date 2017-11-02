/**
 * Created by keke on 2017/11/2.
 */
public class Event {

    public Event(String title, String start_time, String venue_name, String url) {
        this.title = title;
        this.start_time = start_time;
        this.venue_name = venue_name;
        this.url = url;
    }

    private String title;
    private String start_time;
    private String venue_name;
    private String url;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getVenue_name() {
        return venue_name;
    }

    public void setVenue_name(String venue_name) {
        this.venue_name = venue_name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
