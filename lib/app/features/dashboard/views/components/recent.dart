part of cloud;

class _Recent extends StatelessWidget {
  const _Recent({required this.data, Key? key}) : super(key: key);

  final List<FileDetail> data;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderText("Recent"),
        const SizedBox(height: kDefaultSpacing),
        ...data
            .map(
              (e) => FileListButton(
                data: e,
                onPressed: () {},
              ),
            )
            .toList()
      ],
    );
  }
}
