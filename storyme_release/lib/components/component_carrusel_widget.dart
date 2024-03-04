// ignore_for_file: sized_box_for_whitespace, unused_import, library_private_types_in_public_api
import 'package:firebase_database/firebase_database.dart';

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:storyme_release/imports.dart';

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
    super.key,
    required this.cuento,
    required this.url,
    required this.title,
  });

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
                onTap: () {
                  if (kDebugMode) {
                    print('Button pressed ...');
                  }
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const StylesWidget(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.68,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
                width: MediaQuery.sizeOf(context).width * 0.8,
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
                  child: AutoSizeText(
                    title,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Eczar',
                          color: const Color(0xFF382924),
                        ),
                    minFontSize: 20,
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

class ComponentCarruselHomeWidget extends StatefulWidget {
  const ComponentCarruselHomeWidget({super.key});

  @override
  _ComponentCarruselHomeWidgetState createState() =>
      _ComponentCarruselHomeWidgetState();
}

class _ComponentCarruselHomeWidgetState
    extends State<ComponentCarruselHomeWidget> {
  late ComponentCarruselHomeModel _model;
  final ref = FirebaseDatabase.instance.ref('carrusel');

  late List<_Cuento> stories;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentCarruselHomeModel());
    stories = [];
    fetchStories();
  }

  void fetchStories() async {
    ref.once().then((DatabaseEvent snapshot) {
      final List<_Cuento> fetchedStories = [];
      final Map<dynamic, dynamic> values = snapshot.snapshot.value as Map;
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
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CarouselSlider(
              items: stories.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return StoryWidget(
                      cuento: item.cuento,
                      url: item.url,
                      title: item.title,
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
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  // Función opcional que se llama cuando cambia la página
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
