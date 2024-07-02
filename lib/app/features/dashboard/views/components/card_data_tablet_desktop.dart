part of cloud;

class _CardDataOther extends StatelessWidget {
  const _CardDataOther({required this.folderData, Key? key}) : super(key: key);

  final List<_FolderData> folderData;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final data = folderData[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: CardFolder(
              label: data.label,
              totalItem: data.totalItem,
              fileType: data.fileType,
            ),
          );
        },
        childCount: folderData.length,
      ),
    );
  }
}
