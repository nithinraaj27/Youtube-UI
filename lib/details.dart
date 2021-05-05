import 'package:youtube_clone/recenttile.dart';
import 'package:youtube_clone/slidclass.dart';
import 'package:youtube_clone/trendingclass.dart';


List<slidclass> types(){

  // ignore: deprecated_member_use
  List<slidclass> parts = new List();
  slidclass ss = new slidclass();

  //1
  ss.imgurl = "assets/part.jpg";
  ss.name1 = "Netflix Clone with flutter UI Design || Tutorials";
  ss.name2 = "for Beginners";
  ss.views = "2M Views";
  ss.dur = "3 weeks";
  ss.userimg = "https://randomuser.me/api/portraits/men/44.jpg";
  ss.tuber = "NithinRaaj";
  parts.add(ss);
  ss = new slidclass();
  //2
  ss.imgurl = "assets/part2.jpg";
  ss.name1 = "Netflix Clone with flutter UI Design || Tutorials";
  ss.name2 = "for Beginners";
  ss.userimg = "https://randomuser.me/api/portraits/men/44.jpg";
  ss.dur = "5 weeks";
  ss.views = "1M Views";
  ss.tuber = "NithinRaaj";
  parts.add(ss);
  ss = new slidclass();

  //3
  ss.imgurl = "assets/part3.jpg";
  ss.name1 = "Confitte Design in flutter UI Design||Tutorials";
  ss.name2 = "for Beginners";
  ss.userimg = "https://randomuser.me/api/portraits/men/11.jpg";
  ss.dur = "2 weeks";
  ss.views = "52k Views";
  ss.tuber = "Karan";
  parts.add(ss);
  ss = new slidclass();

  //4
  ss.imgurl = "assets/part4.jpg";
  ss.name1 = "Render Error with flutter UI Design || Tutorials";
  ss.name2 = "for Beginners";
  ss.userimg = "https://randomuser.me/api/portraits/men/34.jpg";
  ss.dur = "6 weeks";
  ss.views = "56K Views";
  ss.tuber = "Random Pics";
  parts.add(ss);
  ss = new slidclass();

  //5
  ss.imgurl = "assets/part5.jpg";
  ss.name1 = "MindSdk Error in flutter UI Design || Tutorials";
  ss.name2 = "for Beginners";
  ss.userimg = "https://randomuser.me/api/portraits/women/34.jpg";
  ss.dur = "3 weeks";
  ss.views = "21K Views";
  ss.tuber = "MadhuSri";
  parts.add(ss);
  ss = new slidclass();

  //6
  ss.imgurl = "assets/part6.jpg";
  ss.name1 = "Show and Hide in flutter UI Design || Tutorials";
  ss.name2 = "for Beginners";
  ss.userimg = "https://randomuser.me/api/portraits/women/34.jpg";
  ss.dur = "5 weeks";
  ss.views = "1M Views";
  ss.tuber = "Madhusri";
  parts.add(ss);
  ss = new slidclass();

  return parts;
}

List<trendingclass> getTrend(){

  // ignore: deprecated_member_use
  List<trendingclass> trends = new List();
  trendingclass st = new trendingclass();

  //1
  st.imgurl = "assets/part.jpg";
  st.name1 = "Netflix Clone with flutter UI Design || Tutorials";
  st.name2 = "for Beginners";
  st.views = "2M Views";
  st.dur = "3 weeks";
  st.userimg = "https://randomuser.me/api/portraits/men/44.jpg";
  st.tuber = "NithinRaaj";
  trends.add(st);
  st = new trendingclass();
  //2
  st.imgurl = "assets/part2.jpg";
  st.name1 = "Netflix Clone with flutter UI Design || Tutorials";
  st.name2 = "for Beginners";
  st.userimg = "https://randomuser.me/api/portraits/men/44.jpg";
  st.dur = "5 weeks";
  st.views = "1M Views";
  st.tuber = "NithinRaaj";
  trends.add(st);
  st = new trendingclass();
  //3
  st.imgurl = "assets/part3.jpg";
  st.name1 = "Confitte Design in flutter UI Design||Tutorials";
  st.name2 = "for Beginners";
  st.userimg = "https://randomuser.me/api/portraits/men/11.jpg";
  st.dur = "2 weeks";
  st.views = "52k Views";
  st.tuber = "Karan";
  trends.add(st);
  st = new trendingclass();

  //4
  st.imgurl = "assets/part4.jpg";
  st.name1 = "Render Error with flutter UI Design || Tutorials";
  st.name2 = "for Beginners";
  st.userimg = "https://randomuser.me/api/portraits/men/34.jpg";
  st.dur = "6 weeks";
  st.views = "56K Views";
  st.tuber = "Random Pics";
  trends.add(st);
  st = new trendingclass();

  //5
  st.imgurl = "assets/part5.jpg";
  st.name1 = "MindSdk Error in flutter UI Design || Tutorials";
  st.name2 = "for Beginners";
  st.userimg = "https://randomuser.me/api/portraits/women/34.jpg";
  st.dur = "3 weeks";
  st.views = "21K Views";
  st.tuber = "MadhuSri";
  trends.add(st);
  st = new trendingclass();

  //6
  st.imgurl = "assets/part6.jpg";
  st.name1 = "Show and Hide in flutter UI Design || Tutorials";
  st.name2 = "for Beginners";
  st.userimg = "https://randomuser.me/api/portraits/women/34.jpg";
  st.dur = "5 weeks";
  st.views = "1M Views";
  st.tuber = "Madhusri";
  trends.add(st);
  st = new trendingclass();

  return trends;
}

List<recenttile> getRecent(){

  // ignore: deprecated_member_use
  List<recenttile> rec = new List();
  recenttile rt = new recenttile();

  //1
  rt.imgurl = "assets/part.jpg";
  rt.title1 = "Netflix Clone || Simple Tutor";
  rt.title2 = "-ials For Beginners";
  rec.add(rt);
  rt = new recenttile();


  //2
  rt.imgurl = "assets/part2.jpg";
  rt.title1 = "Netflix Clone || Simple Tutor";
  rt.title2 = "-ials For Beginners";
  rec.add(rt);
  rt = new recenttile();


  //3
  rt.imgurl = "assets/part3.jpg";
  rt.title1 = "Confitte des||Simple Tutor";
  rt.title2 = "-ials For Beginners";
  rec.add(rt);
  rt = new recenttile();


  //4
  rt.imgurl = "assets/part4.jpg";
  rt.title1 = "Render Error || Simple Tutor";
  rt.title2 = "-ials For Beginners";
  rec.add(rt);
  rt = new recenttile();

  return rec;
}