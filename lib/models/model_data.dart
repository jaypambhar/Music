import 'package:music_app/models/home_2_model.dart';
import 'package:music_app/models/home_model.dart';
import 'package:music_app/models/photo_model.dart';
import 'package:music_app/models/song_list_model.dart';

class Data {
  static List<PhotoModel> photoFeed() {
    List<PhotoModel> list = [
      PhotoModel(
        firstImages:
            "https://st2.depositphotos.com/1594308/5381/i/950/depositphotos_53811205-stock-photo-friends-dancing-in-night-club.jpg",
      ),
      PhotoModel(
        firstImages:
            "https://images.unsplash.com/photo-1576419840119-bddd76d62bbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZGolMjBwYXJ0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
      ),
      PhotoModel(
        firstImages:
            "https://images.unsplash.com/photo-1583244532610-2a234e7c3eca?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZGFuY2UlMjBwYXJ0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
      ),
      PhotoModel(
        firstImages:
            "https://i.pinimg.com/originals/39/0d/18/390d1893a2e3b210f00cd3b6071b58b9.jpg",
      ),
      PhotoModel(
        firstImages: "https://wallpaperaccess.com/full/4090372.jpg",
      ),
    ];
    return list;
  }

  static List<HomeModel> songAlbum() {
    List<HomeModel> list = [];
    list = [
      HomeModel(
        list: 1,
        listImage:
            "https://static9.depositphotos.com/1430909/1145/i/600/depositphotos_11452826-stock-photo-dj-mixes-the-track.jpg",
        firstText: "Play For You",
        lastText: "The Weekend",
      ),
      HomeModel(
        list: 2,
        listImage:
            "https://images.unsplash.com/photo-1583244532610-2a234e7c3eca?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZGFuY2UlMjBwYXJ0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
        firstText: "Play For You",
        lastText: "The Weekend",
      ),
      HomeModel(
        list: 3,
        listImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ613StXLHup0MgYsM40M8ki9GrFwy0sSMONRyNfMtgEbvyyWHwh-SueufpWof57FN3lAE&usqp=CAU",
        firstText: "Play For You",
        lastText: "The Weekend",
      ),
      HomeModel(
        list: 4,
        listImage:
            "https://st.depositphotos.com/2751237/4156/v/950/depositphotos_41564063-stock-illustration-dj-party-poster.jpg",
        firstText: "Play For You",
        lastText: "The Weekend",
      ),
      HomeModel(
        list: 5,
        listImage:
            "https://images.unsplash.com/photo-1493676304819-0d7a8d026dcf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZGolMjBwYXJ0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
        firstText: "Play For You",
        lastText: "The Weekend",
      ),
    ];
    return list;
  }

  static List<HomeSecondModel> weeklySongFeed() {
    List<HomeSecondModel> list = [];
    list = [
      HomeSecondModel(
        list: 1,
        image:
            "https://besthqwallpapers.com/Uploads/26-4-2018/50134/thumb2-dj-marshmello-edm-concert-electronic-music-american-dj.jpg",
        firstText: "Play For You",
        lastText: "This Weekend",
      ),
      HomeSecondModel(
        list: 2,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWvE-Fb6iuTlXGBnFTGBpbhdGJyK88tpMGMQ&usqp=CAU",
        firstText: "Play For You",
        lastText: "This Weekend",
      ),
      HomeSecondModel(
        list: 3,
        image:
            "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZGolMjBwYXJ0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
        firstText: "Play For You",
        lastText: "This Weekend",
      ),
      HomeSecondModel(
        list: 4,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWvE-Fb6iuTlXGBnFTGBpbhdGJyK88tpMGMQ&usqp=CAU",
        firstText: "Play For You",
        lastText: "This Weekend",
      ),
      HomeSecondModel(
        list: 5,
        image:
            "https://lh3.googleusercontent.com/mmy9jwmpRiYVy186cUxulAplqJgUB1R09Dl6mZ8j8gi_4CbV1n9LUf5ZYFOzhXHJG7JjkCJm0TPqkxu7NflMCJHPzwze=w1000",
        firstText: "Play For You",
        lastText: "This Weekend",
      ),
    ];
    return list;
  }

  static List<SongList> songFeed() => [
        SongList(
          list: 1,
          songImage:
              "https://naasongs.com.co/wp-content/uploads/2021/02/Lut-Gaye-song-jpeg.jpg",
          songName: "Lut Gaye -",
          artistName: "Jubin Notiyal,Tanishk Bagchi",
        ),
        SongList(
          list: 2,
          songImage:
              "https://www.ringtonepix.com/wp-content/uploads/2020/08/I-Love-You-Punjabi-Song-by-Akull-1280x720.jpg",
          songName: " I Love You",
          artistName: "Akull",
        ),
        SongList(
          list: 3,
          songImage:
              "https://a10.gaanacdn.com/gn_img/song/qa4WEqqWP1/4WERJLrMbP/size_xxl_1579064287.webp",
          songName: "LAGDI_LAHORE_DI",
          artistName: "Guru Randhawa",
        ),
        SongList(
          list: 4,
          songImage:
              "https://www.bollynook.com/uploaded_pictures/content/lyrics/520x333/ye-tune-kya-kiya-11654.jpg",
          songName: "Ye tune Kya Kia",
          artistName: "Pritam,Aditya",
        ),
        SongList(
          list: 5,
          songImage:
              "https://a10.gaanacdn.com/images/song/3/30762503/crop_480x480_1593616645.jpg",
          songName: "CUTE SONG",
          artistName: "Aroob Khan",
        ),
        SongList(
          list: 6,
          songImage:
              "https://a10.gaanacdn.com/gn_img/albums/jBr3gybR1m/Br3gLr6dWR/size_xxl.webp",
          songName: "AA Zara",
          artistName: "Mahesh Bhatt",
        ),
        SongList(
          list: 7,
          songImage:
              "https://downloads4djs.co.in/wp-content/uploads/2019/07/Woh-Ladki-Jo.jpg",
          songName: "Woh ladki Jo",
          artistName: "Dr A & Dj Bonny",
        ),
        SongList(
          list: 8,
          songImage:
              "https://www.glamsham.com/wp-content/uploads/2020/06/Song-Lyrics-of-Nakhre-Tere-by-Nikk.png",
          songName: "Nakhre_Tere",
          artistName: "Nikk",
        ),
        SongList(
          list: 9,
          songImage: "https://hindimarathilyrics.in/images/dhokha-dhadi.jpg",
          songName: "Dhkha_Dhadi(official_music)",
          artistName: "Arijit Singh,Palak Muchhal",
        ),
        SongList(
          list: 10,
          songImage:
              "https://a10.gaanacdn.com/gn_img/song/dwN39y83DP/N39Aq2Qd3D/size_m_1562241645.jpg",
          songName: "Galat Fehmi..",
          artistName: "Asim Azhar",
        ),
      ];
}
