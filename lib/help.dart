import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  void initState() {
    print('Help');
    super.initState();
  }

  @override
  void dispose() {
    print('Close Help');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'مساعده',
                  style: TextStyle(fontSize: 25),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.close)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                """ اذا كنت من الحريصين على ذكر الله دوما في الصباح وفي المساء ، حمل تطبيق السبحة الالكترونية ، الذي يغنيك عن المسبحة التقليدية .
لا داعي لتحمل السبحة العادية معك ، فمع تطبيق المسبحة الالكترونية ، وداعا لنسيان المسبحة التقليدية في المنزل .
مع برنامج السبحة الذكية الالكترونية ما عليك الا التسبيح والسبحة الذكية عليها العد الكترونيا .
لاتفكر ولا تحتار ذكر الله هو الخيار .
مع تطبيق سبحة انت دائما الى الله اقرب ، و أنتم دائما على موعد مع التسبيح والاستغفار والصلاة على النبي "عليه أفضل الصلاة والتسليم " .
تحميل السبحة الالكترونية للجوال سهل جدا ، حيث ان حجمه خفيف جدا ومناسب لكل الاجهزة .
ما عليك سوى اختيار التسبيحة التي تريدها ، ما اذا كانت سبحان الله ، الحمدلله ، لا اله الا الله ، الله أكبر أو حتى ذكر الصلاة على النبي "عليه أفضل الصلاة والتسليم "
ثم تبدأ بالعد من خلال الضغط على زر العد كلما ذكرت التسبيحة المختارة .
شارك اصدقائك واصحابك الأجر من خلال مشاركة التطبيق معهم ، كما يمكنك التسبيح والاستغفار ومشاركة عدد المرات التي قمت بها بذلك معهم ومن خلال مواقع التواصل الاجتماعي .
قال النبي صلى الله عليه وسلم : الدال على الخير كفاعله .
لا تنسونا من صالح دعائكم . """),
          )
        ],
      ),
    );
  }
}
