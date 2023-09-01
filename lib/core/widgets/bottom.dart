import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0XFF001838),
      height: 55,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image(image: AssetImage('assets/images/some/logo2.png'),
            ),
          ),
          VerticalDivider(
            color: Color(0XFF2388AE),
            thickness: 2,
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: ()async{
              const url = 'https://www.facebook.com/mancity';
              if(await canLaunch(url)){
              await launch(url);  //forceWebView is true now
              }else {
              throw 'Could not launch $url';
              }
            },
            child: BottomIcon(
              faIcon:FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white) ,
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: ()async{
              const url = 'https://www.instagram.com/mancity/';
              if(await canLaunch(url)){
                await launch(url);  //forceWebView is true now
              }else {
                throw 'Could not launch $url';
              }
            },
            child: BottomIcon(
              faIcon:FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.white,) ,
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: ()async{
              const url = 'https://www.youtube.com/@mancity';
              if(await canLaunch(url)){
                await launch(url);  //forceWebView is true now
              }else {
                throw 'Could not launch $url';
              }
            },
            child: BottomIcon(
              faIcon:FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.white,) ,
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: ()async{
              const url = 'https://twitter.com/ManCityES';
              if(await canLaunch(url)){
                await launch(url);  //forceWebView is true now
              }else {
                throw 'Could not launch $url';
              }
            },
            child: BottomIcon(
              faIcon:FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.white,) ,
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: ()async{
              const url = 'https://www.mancity.com/help-and-support/contact-us';
              if(await canLaunch(url)){
                await launch(url);  //forceWebView is true now
              }else {
                throw 'Could not launch $url';
              }
            },
            child: Text('Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Fjalla',
              ),),
          )


        ],
      ),
    );
  }
}
class BottomIcon extends StatelessWidget {
  late FaIcon faIcon;
   BottomIcon({
    required this.faIcon
});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
          border: Border.all(
            color: Colors.transparent,

            width: 10,
          )
        ),
        child: faIcon,

      ),
    );
  }
}