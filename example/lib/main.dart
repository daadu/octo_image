import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OctoImage Demo',
      theme: ThemeData(),
      home: OctoImagePage(),
    );
  }
}

class OctoImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OctoImage Demo'),
      ),
      body: ListView(
        children: [
          _simpleBlur(),
          _circleAvatar(),
        ],
      ),
    );
  }

  Widget _simpleBlur() {
    return AspectRatio(
      aspectRatio: 269 / 173,
      child: OctoImage(
        image: NetworkImage('https://blurha.sh/assets/images/img1.jpg'),
        placeholderBuilder:
            OctoPlaceholder.blurHash('LEHV6nWB2yk8pyo0adR*.7kCMdnj'),
        errorBuilder: OctoError.icon(color: Colors.red),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _circleAvatar() {
    return SizedBox(
      height: 160,
      child: OctoImage.fromSet(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Macaca_nigra_self-portrait_large.jpg/1024px-Macaca_nigra_self-portrait_large.jpg'),
          octoSet: OctoSet.circleAvatar(
              backgroundColor: Colors.red, text: Text("T"))),
    );
  }
}