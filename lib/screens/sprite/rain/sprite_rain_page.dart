import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spritewidget/spritewidget.dart';

ImageMap _imageMap;
SpriteSheet _sprites;

class SpriteRainPage extends StatefulWidget {
  static const String id = '/rain';
  @override
  _SpriteRainPageState createState() => _SpriteRainPageState();
}

class _SpriteRainPageState extends State<SpriteRainPage> {
  bool assetsLoaded = false;
  RainWorld world;

  @override
  void initState() {
    super.initState();

    // Get our root asset bundle
    AssetBundle assetBundle = rootBundle;

    // Load all graphics, then set the state to assetsLoaded and create the
    // WeatherWorld sprite tree
    _loadAssets(assetBundle).then((_) {
      setState(() {
        assetsLoaded = true;
        world = new RainWorld();
      });
    });
  }

  //Loading assets
  Future<Null> _loadAssets(AssetBundle bundle) async {
    // Load images using an ImageMap
    _imageMap = new ImageMap(bundle);

    await _imageMap.load(<String>[
      'assets/icon-rain.png',
      'assets/weathersprites.png',
    ]);

    // Load the sprite sheet, which contains snowflakes and rain drops.
    String json = await DefaultAssetBundle.of(context)
        .loadString('assets/weathersprites.json');
    _sprites = new SpriteSheet(_imageMap['assets/weathersprites.png'], json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sprite Rain'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/2.jpg',
            fit: BoxFit.cover,
          ),
          assetsLoaded ? SpriteWidget(world) : Container(),
        ],
      ),
    );
  }
}

class RainWorld extends NodeWithSize {
  RainNode _rain;
  RainWorld() : super(const Size(2048.0, 2048.0)) {
    _rain = new RainNode();
    _rain.active = true;
    addChild(_rain);
  }
}

class RainNode extends Node {
  List<ParticleSystem> _particles = [];

  RainNode() {
    _addParticles(1.0);
    _addParticles(1.5);
    _addParticles(2.0);
  }

  void _addParticles(double distance) {
    ParticleSystem particleSystem = ParticleSystem(
      _sprites['raindrop.png'],
      transferMode: BlendMode.srcATop, //lighten
      posVar: const Offset(1300.0, 0.0),
      direction: 90.0,
      directionVar: 0.0,
      speed: 10000.0 / distance,
      speedVar: 100.0 / distance,
      startSize: 1.2 / distance,
      startSizeVar: 0.2 / distance,
      endSize: 1.2 / distance,
      endSizeVar: 0.2 / distance,
      life: 1.5 * distance,
      lifeVar: 1.0 * distance,
      maxParticles: 15,
    );

    particleSystem.position = const Offset(1024.0, -200.0);
    particleSystem.rotation = 10.0;
    particleSystem.opacity = 0.0;

    _particles.add(particleSystem);
    addChild(particleSystem);
  }

  set active(bool active) {
    motions.stopAll();
    for (ParticleSystem system in _particles) {
      if (active) {
        motions.run(MotionTween<double>(
          (a) => system.opacity = a,
          system.opacity,
          1.0,
          2.0,
        ));
      } else {
        motions.run(MotionTween<double>(
            (a) => system.opacity = a, system.opacity, 0.0, 0.5));
      }
    }
  }
}
