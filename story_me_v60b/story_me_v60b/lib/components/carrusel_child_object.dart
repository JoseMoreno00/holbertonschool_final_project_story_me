import 'package:story_me_v60b/imports.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';

// class CarruselChildWidget extends StatefulWidget {
//   const CarruselChildWidget({super.key});

//   @override
//   State<CarruselChildWidget> createState() =>
//       _ComponentCarruselStylesWidgetState();
// }

class CarruselChildObject extends StatelessWidget {
  late final String storyTitle;
  late final String storyDescription;
  late final String storyImage;

  CarruselChildObject(
      {Key? key,
      required String storyTitle,
      required String storyDescription,
      required String storyImage}) {
    this.storyTitle = storyTitle;
    this.storyDescription = storyDescription;
    this.storyImage = storyImage;
    super(key: key);
  }

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
                  texto = storyTitle;
                  imagen = 'assets/images/books/redridding.jpg';
                  cuento = storyDescription;
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
                    image: const DecorationImage(
                      image: AssetImage(storyImage),
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
                    (storyTitle),
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
