// ignore_for_file: sized_box_for_whitespace, use_super_parameters, library_private_types_in_public_api, use_key_in_widget_constructors, unused_element
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'package:storyme_release/screens/styles_widget.dart';

// ignore: duplicate_ignore
// ignore: unused_element
class _Cuento {
  final String cuento;
  final String url;
  final String title;

  _Cuento({
    required this.cuento,
    required this.url,
    required this.title,
  });
}

class StoryWidget extends StatelessWidget {
  final String cuento;
  final String url;
  final String title;

  const StoryWidget({
    Key? key,
    required this.cuento,
    required this.url,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.68,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(url),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 100,
                constraints: const BoxConstraints(
                  minWidth: 200,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFEDECEA),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                  border: Border.all(
                    color: const Color(0xFFFC772F),
                    width: 1,
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0, -1),
                  child: Text(
                    cuento,
                    style: const TextStyle(
                      fontFamily: 'Eczar',
                      color: Color(0xFF382924),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ComponentCarruselHomeWidgetState
    extends State<ComponentCarruselHomeWidget> {
  late ComponentCarruselHomeModel _model;
  final ref = FirebaseDatabase.instance.ref('carrusel');
  List<_Cuento> stories = [];

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCarruselHomeModel());
    fetchStories();
  }

  void fetchStories() {
    ref.once().then((DataSnapshot snapshot) {
          final List<_Cuento> fetchedStories = [];
          final Map<dynamic, dynamic> values = snapshot.value as Map;
          values.forEach((key, value) {
            fetchedStories.add(_Cuento(
              cuento: value['cuento'],
              url: value['url'],
              title: value['title'],
            ));
          });
          setState(() {
            stories = fetchedStories;
          });
        } as FutureOr Function(DatabaseEvent value));
  }

  // void fetchStories() {
  //   FirebaseAnimatedList(
  //     query: ref,
  //     itemBuilder: (context, snapshot, animation, index) {
  //       return StoryWidget(
  //         cuento: snapshot.child('cuento').value.toString(),
  //         url: snapshot.child('url').value.toString(),
  //         title: snapshot.child('title').value.toString(),
  //       );
  //     },
  //   );
  // }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 1,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.9,
                child: CarouselSlider(
                  items: stories.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return const StoryWidget(
                          cuento: '',
                          url: '',
                          title: '',
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      // Función opcional que se llama cuando cambia la página
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
