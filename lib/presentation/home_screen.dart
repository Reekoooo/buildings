import 'package:building/application/home/home_notifier.dart';
import 'package:building/application/home/home_ui_states.dart';
import 'package:building/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(homeStateProvider);
    return state.map(
      data: (data) => Scaffold(
        appBar: HomeAppBar(
          data: data,
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 12,
          color: Colors.red,
          child: Text('Bottom NavBar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Flats',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    data.vm.flats.isEmpty
                        ? Text('No data')
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(data.vm.flats[index].id.id),
                              );
                            },
                            itemCount: data.vm.flats.length,
                            shrinkWrap: true,
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            child: Text('Add Your Flat'),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buildings',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    data.vm.buildings.isEmpty
                        ? Text('No Data')
                        : ListView.builder(
                            itemBuilder: (context, index) {
                              return ListTile(
                                tileColor: Colors.black12,
                                title: Text(
                                    data.vm.buildings[index].profile.name.name),
                              );
                            },
                            itemCount: data.vm.buildings.length,
                            shrinkWrap: true,
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            child: Text('Add Your Building'),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      noData: (noData) => Scaffold(),
      loading: (value) => CircularProgressIndicator(),
    );
  }
}

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key, required this.data}) : super(key: key);

  final UserData data;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: data.vm.profileImageOnTap,
        child: CircleAvatar(
            radius: 20,
            backgroundImage: data.vm.profileImage != null
                ? NetworkImage(
                    '$HOST_NAME/${data.vm.profileImage!.split('/')[1]}')
                : AssetImage('assets/img.png') as ImageProvider),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: context.read(homeStateProvider.notifier).logOut,
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
