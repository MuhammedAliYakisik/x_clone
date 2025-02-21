class StringConstant {
  static final StringConstant _instance = StringConstant._init();
  static StringConstant get instance => _instance;
  StringConstant._init();


  //home.view
  final String tabBarFirstText = "Sana Özel";
  final String tabBarSecondText = "Takip";

  //message.view
  final String messageAppBarText = "Mesajlar";
  final String welcomeText = 'Gelen kutuna hoş\ngeldin!';
  final String messageContentText = 'Özel sohbetler sayesinde X platformundaki diğer kişilere düşüncelerini yaz, gönderi ve daha fazla içerik paylaş.';
  final String messageButtonText = "Mesaj Yaz";
}