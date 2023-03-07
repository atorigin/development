class User {
  int id;
  String name;
  String username;
  String email;

  User(this.id, this.name, this.username, this.email);

  void printUserInfo(){
    print("用戶名稱 $name ; 該用戶帳號為 $username , 用戶 id 為 $id , 用戶信箱為 $email");
  }

}
void main(List<String> args) {
  User user1 = User(1, "demo", 'demo-user', 'demo@mail.com');
  user1.printUserInfo();
  User user2 = User(2, "atorigin", 'atorigin', 'atorigin@mail.com');
  user2.printUserInfo();
}