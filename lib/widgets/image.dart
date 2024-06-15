import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          width: 200,
          child: CachedNetworkImage(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH_LVLK_zsugIXkJuvD9xC5szztbjleeYX5hmMCxgq02-_FhveSCtp-6oyhiwh_u99hi0&usqp=CAU',
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),

        // child: Container(
        //   height: 200,
        //   width: 300,
        //   decoration: BoxDecoration(
        //     boxShadow: const [
        //       BoxShadow(
        //         blurRadius: 10,
        //         spreadRadius: 5,
        //       )
        //     ],
        //     image: const DecorationImage(image: AssetImage('assets/demo.jpg'),
        //     fit: BoxFit.cover,
        //     ),
        //     color: Colors.red,
        //     borderRadius: BorderRadius.circular(40),
        //   ),
        // ),

        // child: Container(
        //   height: 300,
        //   width: 250,
        //   // color: Colors.red,
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         blurRadius: 10,
        //         spreadRadius: 5,
        //       )
        //     ],
        //       image: DecorationImage(
        //           image: NetworkImage(
        //               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhuzW3jNVMSHxA114jbxhxobhfy6qTtNbJjPrVN4Z9waXsJJWcQS2eO3vqZLN9-14FoUM&usqp=CAU'),
        //           fit: BoxFit.cover),
        //       color: Colors.red,
        //       borderRadius: BorderRadius.circular(50)),
        //   // child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhuzW3jNVMSHxA114jbxhxobhfy6qTtNbJjPrVN4Z9waXsJJWcQS2eO3vqZLN9-14FoUM&usqp=CAU',
        //   // // fit:BoxFit.cover,
        //   //   fit: BoxFit.fill,
        //   // ),
        // ),
      ),
    );
  }
}
