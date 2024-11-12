class HomeRepository {
  Future<void> getHomeData() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}