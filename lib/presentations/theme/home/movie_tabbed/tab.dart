class Tab {
  final int index;
  final String title;

  const Tab({
    this.index,
    this.title,
  })  : assert(index >= 0, 'index cannot be negative'),
        assert(title != null, 'title cannot be null');
}