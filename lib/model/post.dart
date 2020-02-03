class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
  });

  final String title;
  final String author;
  final String imageUrl;

}

final List<Post> posts = [
  Post(title: "健身达人", author: "乐刻1号", imageUrl: "https://cdn.leoao.com/%2300CAE41538138744058.png"),
  Post(title: "饮食规划", author: "乐刻2号", imageUrl: "https://cdn.leoao.com/%230701C51538138705778.png"),
  Post(title: "按时作息", author: "乐刻3号", imageUrl: "https://cdn.leoao.com/%232515101538138735404.png"),
];
