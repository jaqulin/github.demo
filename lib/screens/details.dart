import 'package:flutter/material.dart';
import 'package:github/models/assessment.dart';
import 'package:github/models/form.dart';

class DetailsScreen extends StatelessWidget {
  final Assessment _data;

  const DetailsScreen(this._data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text(_data.member.shortName),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: criteria.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(criteria[index].title),
            subtitle: Text(criteria[index].description),
            //trailing: _DropdownButton(index: index, points: _data.points),
          ),
          separatorBuilder: (context, index) => const Divider(
            color: Colors.grey,
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              label: const Text('Update'),
              icon: const Icon(Icons.check_circle),
              heroTag: null,
              onPressed: () => Navigator.pop(context, _data),
            ),
            FloatingActionButton.extended(
              label: const Text('Cancel'),
              icon: const Icon(Icons.cancel),
              heroTag: null,
              onPressed: () => Navigator.pop(context, null),
            ),
          ],
        ),
      ),
    );
  }
}
