part of cloud;

class _CardService extends StatelessWidget {
  const _CardService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        Padding(
          padding: EdgeInsets.all(kDefaultSpacing),
          child: CardCloud(
            title: "work and private document",
            serviceName: "free",
            imageAsset: ImageRasterPath.megaphone,
            totalStorage: "1 gb",
            color: Colors.orange,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(kDefaultSpacing),
          child: CardCloud(
            title: "save your happy moment",
            serviceName: "standard",
            imageAsset: ImageRasterPath.rocket,
            totalStorage: "10 gb",
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(kDefaultSpacing),
          child: CardCloud(
            title: "become the best Content Creator",
            serviceName: "enterprise",
            imageAsset: ImageRasterPath.boxCoins,
            totalStorage: "50 gb",
            color: Colors.red,
          ),
        ),
      ],
      options: CarouselOptions(
        height: CardCloud.height,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(seconds: 2),
        autoPlayInterval: const Duration(seconds: 5),
        viewportFraction: 1,
      ),
    );
  }
}
