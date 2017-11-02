/**
 * Created by keke on 2017/11/2.
 */
public class Track {
    public String id;
    public String title;
    public String permalink;
    public String duration;
    public String url;
    public String published_at;
    public String downloadable;
    public Images images;
    public class Images {
        public String square_150;
        public String square_250;
        public String square_500;

    };
    public String stream_url;
    public User user;
    public class User {
        public String id;
        public String name;
        public String permalink;
        public String url;
        public String avatar_url;
        public String location;
    };

}
