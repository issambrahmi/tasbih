import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:vibration/vibration.dart';

class TasbihController extends GetxController {
  int counter = 0;
  bool isVibrate = true;
  bool isVolume = true;
  AudioCache? audioCache;

  void onTapButton() {
    if (isVolume) {
      final player = AudioPlayer();
      player.play(AssetSource("Sound/click.mp3"));
    }
    if (isVibrate) {
      Vibration.vibrate(duration: 100);
    }
    counter++;
    update();
  }

  void onTapIconsdown(int index) {
    switch (index) {
      case 0:
        Null;
        break;
      case 1:
        isVolume = !isVolume;
        update();
        break;
      case 2:
        isVibrate = !isVibrate;
        update();
        break;
      case 3:
        if (index == 3 && counter > 0) {
          counter--;
        }
        update();
        break;
    }
  }
}
