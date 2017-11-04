package mydefault; /**
 * Created by keke on 2017/10/29.
 */

import com.google.gson.*;
import org.dom4j.*;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.util.*;


public class HttpRequest {

    public static String sendGet(String url, String param, boolean needAuth) {
        String result = "";
        BufferedReader in = null;
        try {

            String urlNameString = url + "?" + param;

            URL realUrl = new URL(urlNameString);
            // 打开和URL之间的连接
            URLConnection connection = realUrl.openConnection();
            // 设置通用的请求属性
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            if(needAuth) {
                connection.setRequestProperty("Authorization",
                        "Bearer BQADtKcK9-4N7oliSnwDWkU5dj7jlzi4ie1hrJpTpLT_7sUrbSuVU5qbIYEXs1mX9SSBFZQpXgaNpjOeWL_chehPhsdHRNMv0LVoDFQqshlIyeaL2am0bgyRNfiF3p2u9wYEIE5lTvviindZRbzAeF36dhaoGYk");
            }
             // 建立实际的连接
            connection.connect();
            // 获取所有响应头字段
            Map<String, List<String>> map = connection.getHeaderFields();
            // 遍历所有的响应头字段
            for (String key : map.keySet()) {
//                System.out.println(key + "--->" + map.get(key));
            }
            // 定义 BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(
                    connection.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送GET请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输入流
        finally {
            try {
                if (in != null) {
                    in.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return result;
    }

    public static List<Event> getEventList() {
        //http://api.eventful.com/rest/events/search?&app_key=rW4qKDMtCDgN8q5m&keywords=music&location=Shanghai&date=Future&page_size=10
        String eventful = HttpRequest.sendGet(
                "http://api.eventful.com/rest/events/search",
                "app_key=rW4qKDMtCDgN8q5m&keywords=music&location=Shanghai&date=Future&page_size=5",
                false
        );

        List<Event> events = new ArrayList<>();

        try {
            Document document = DocumentHelper.parseText(eventful);

            Element eventful_root = document.getRootElement();
            Element eventful_events = eventful_root.element("events");

            for (Iterator<Element> it = eventful_events.elementIterator(); it.hasNext();) {
                Element eventful_event = it.next();

                String eventful_title = eventful_event.element("title").getText();
                String eventful_time = eventful_event.element("start_time").getText();
                String eventful_address = eventful_event.element("venue_name").getText();
                String eventful_url = eventful_event.element("url").getText();

                Event event = new Event(eventful_title, eventful_time, eventful_address, eventful_url);

                events.add(event);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return events;
    }

    public static List<Artist> getArtistList() {
        // http://ws.audioscrobbler.com/2.0/?method=geo.gettopartists&country=spain&limit=10&api_key=db69e6a6c0807bd304c1a3d18c2e320d
        String lastfm = HttpRequest.sendGet(
                "http://ws.audioscrobbler.com/2.0/",
                "method=geo.gettopartists&country=spain&limit=18&api_key=db69e6a6c0807bd304c1a3d18c2e320d",
                false
        );

        List<Artist> artists = new ArrayList<>();

        try {
            Document document = DocumentHelper.parseText(lastfm);

            Element lastfm_root = document.getRootElement();
            Element lastfm_topartists = lastfm_root.element("topartists");

            for (Iterator<Element> it = lastfm_topartists.elementIterator(); it.hasNext();) {
                Element lastfm_artist = it.next();

                String lastfm_name = lastfm_artist.element("name").getText();
                String lastfm_image = lastfm_artist.element("image").getText();
                String lastfm_url = lastfm_artist.element("url").getText();

                lastfm_image = lastfm_image.replaceAll("34s", "174s");

                Artist artist = new Artist(lastfm_name, lastfm_image, lastfm_url);

                artists.add(artist);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return artists;
    }

    public static List<Track> getTrackList() {
        // https://api.fanburst.com/tracks/trending?client_id=f6e76d71-bfd2-4a7f-bee6-f91db6fb33f5
        //返回500条
        String funburst = HttpRequest.sendGet(
                "https://api.fanburst.com/tracks/trending",
                "client_id=f6e76d71-bfd2-4a7f-bee6-f91db6fb33f5",
                false
        );

        Gson gson = new Gson();
        JsonParser parser = new JsonParser();
        JsonArray Jarray = parser.parse(funburst).getAsJsonArray();

        ArrayList<Track> trackList = new ArrayList<>();
        for (JsonElement t : Jarray) {
            Track track = gson.fromJson(t, Track.class);
            trackList.add(track);

//            System.out.println(track.getImages().getSquare_500());
        }

        trackList.subList(0, 9);

        return  trackList;
    }

    public static void main(String[] args) {
        //发送 GET 请求
        //https://api.spotify.com/v1/browse/new-releases?country=US
//        String spotify = mydefault.HttpRequest.sendGet(
//                "https://api.spotify.com/v1/browse/new-releases",
//                "country=US",
//                true
//        );
//        System.out.println("------------------Spotify------------------");
//        System.out.println(spotify);
        List<Event> eventList = getEventList();
        List<Event> artistList = getEventList();
        List<Track> trackList = getTrackList();

        System.out.println(getArtistList().get(0).getName());
        System.out.println(getEventList().get(2).getStart_time());
        System.out.println(getTrackList().get(6).getTitle());
    }
}

