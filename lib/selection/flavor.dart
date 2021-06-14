enum Flavor {
  Development,
  Release,
}

extension FlavorExt on Flavor {
  String get name => this.toString().split('.')[1];

  bool get debugShowCheckedModeBanner {
    return this == Flavor.Development;
  }

  bool get isDevelop => this == Flavor.Development;
// and more...
}
