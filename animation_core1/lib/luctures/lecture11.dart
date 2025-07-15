import 'package:flutter/material.dart';

class AnimationListed extends StatefulWidget {
  const AnimationListed({super.key});

  @override
  State<AnimationListed> createState() => _AnimationListedState();
}

class _AnimationListedState extends State<AnimationListed> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _members = ['Ali', 'Sara', 'Mohamed'];

  void _removeItem(int index) {
    final removedItem = _members[index];
    _members.removeAt(index);
    _listKey.currentState!.removeItem(
      index,
      (context, animation) => _buildItem(removedItem, animation, index),
      duration: const Duration(milliseconds: 300),
    );
  }

  Widget _buildItem(String name, Animation<double> animation, int index) {
    return FadeTransition(
      opacity: animation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        child: Row(
          children: [
            // صورة دائرية
            SizedBox(
              width: 70,
              height: 70,
              child: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Text(name[0], style: const TextStyle(fontSize: 24, color: Colors.white)),
              ),
            ),
            const SizedBox(width: 12),
            // بيانات المستخدم
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text('Member ID: #${index + 1}', style: const TextStyle(fontSize: 12)),
                ],
              ),
            ),
            // زر الحذف
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _removeItem(index),
            ),
          ],
        ),
      ),
    );
  }

  void _addItem() {
    final newIndex = _members.length;
    final newName = 'NewUser ${newIndex + 1}';
    _members.add(newName);
    _listKey.currentState!.insertItem(newIndex, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Members List"),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 120,
              margin: const EdgeInsets.all(17),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(209, 96, 125, 139),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Selected Members", style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 10),
                  Text("Manage your team dynamically.", style: TextStyle(fontSize: 12, color: Colors.white70)),
                ],
              ),
            ),
            Expanded(
              child: AnimatedList(
                key: _listKey,
                initialItemCount: _members.length,
                itemBuilder: (context, index, animation) {
                  return _buildItem(_members[index], animation, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
