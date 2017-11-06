package mydefault;

import java.util.List;

/**
 * Created by keke on 2017/11/6.
 */
public class SpotifyArtist {
    private Artist artists;
    class Artist {
        private Item [] items;

        class Item {

            private String [] genres;
            private String name;
            private int popularity;
            private Image [] images;


            public Image[] getImages() {
                return images;
            }

            class Image {
                private int height;
                private int width;
                private String url;

                public String getUrl() {
                    return url;
                }
            }

            public String[] getGenres() {
                return genres;
            }

            public String getName() {
                return name;
            }

            public int getPopularity() {
                return popularity;
            }
        }
        public Item[] getItems() {
            return items;
        }

    }

    public Artist getArtist() {
        return artists;
    }

    public String getDefaultName() {
        return this.getArtist().getItems()[0].getName();
    }

    public String getDefaultImage() {
        return this.getArtist().getItems()[0].getImages()[0].getUrl();
    }

    public String getDefaultGenres() {
        return this.getArtist().getItems()[0].getGenres()[0];
    }

    public int getDefaultPopularity() {
        return this.getArtist().getItems()[0].getPopularity();
    }
}
