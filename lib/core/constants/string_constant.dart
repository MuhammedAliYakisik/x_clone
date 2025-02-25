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

  //notifications.view
  final String notificationAppBarText = "Bildirimler";
  final String notificationHeaderText = "Sohbete katıl";
  final String notificationContentText = "Yeniden gönderilerden beğenilere ve daha fazlasına uzanan bir yelpazede,gönderilerin ve takipçilerin hakkındaki her şeyi burada görebilirsin.Burayı seveceksin.";
  final String infoApprovedText = "Daha fazla bilgi al";
  final String approvedContentText = "Onaylanmış bir hesaptan gelen beğeniler,\nbahsetmeler,yeniden gönderiler ve daha birçok şeyi burada bulabilirsin";
  final String approvedHeaderText = "Henüz burada\ngörecek bir şey yok";
  final String mentionersHeaderText = "Sohbete katıl";
  final String mentionersContentText = "X'te bir gönderide veya yanıtta senden bahsedildiğinde burada görebilirsin.";

  //search.view
  final String searchHeaderText = "İlgini çekebilecek gündemler";
  final String searchFollowText = "Who to follow";
  final String searchMoreText = "Daha fazlasını göster";



}