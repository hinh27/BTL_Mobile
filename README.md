# Ứng dụng tìm kiếm và tải hình ảnh nền cho điện thoại

---- Các chức năng chính ----

- Tìm kiếm ảnh
- Xem ảnh
- Tải ảnh

------------ API -------------
- link api : https://www.pexels.com/vi-vn/api/

------ IDE ------

- Visual Studio Code
- Postman (testAPI)

## Ui and architecture
### ![BTL](https://user-images.githubusercontent.com/55725396/121274118-ff412680-c8f3-11eb-93a5-5d40f73b5a5a.png)
## Data models
### ![datamodel](https://user-images.githubusercontent.com/55725396/121277738-70380c80-c8fb-11eb-9c87-3fb215820476.png)
## Triển khai
### Bước 1: Tạo dự án trên vscode
### Bước 2: Nhận Khóa API Pexels (MIỄN PHÍ) truy cập http://pexels.com/api và đăng ký, sau đó nhấp vào yêu cầu quyền truy cập và bạn sẽ nhận được Khóa API của mình
### Bước 3: Kiểm tra api trên postman
#### ![190230526_476776483618155_1307334142253107193_n](https://user-images.githubusercontent.com/55725396/121245120-db68eb00-c8c9-11eb-983b-2a4d3cfa3cb7.png)
### Bước 4: Tạo thanh tìm kiếm 
``` dart
 
  onTap: () {
    if (searchController.text != "") {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SearchView(
                    search: searchController.text,
                  )));
    }
  },
  child: Container(child: Icon(Icons.search))
 ```
#### ![image](https://user-images.githubusercontent.com/55725396/121246001-db1d1f80-c8ca-11eb-8015-9eda8d8dff81.png)
### Bước 5: Tạo thanh thể loại
``` dart
class CategorieModel {
  String categorieName;
  String imgUrl;
}
```
``` dart
 String apiKEY = "[API_KEY]";

List<CategorieModel> getCategories() {
  List<CategorieModel> categories = new List();
  CategorieModel categorieModel = new CategorieModel();

  //
  categorieModel.imgUrl =
      "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categorieModel.categorieName = "Street Art";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
 .....
 ```
 ``` dart
   List<CategorieModel> categories = new List();
 ```
 ``` dart
@override 
  void initState () { 
    category = getCategories (); 
    super.initState (); 
  }
```

#### ![Simulator-Screen-Shot-iPhone-11-Pro-2020-04-07-at-14 29 45](https://user-images.githubusercontent.com/55725396/121246654-99d93f80-c8cb-11eb-97ed-3bbaef387967.png)
### Bước 5: tạo giao diện hiển thị danh sách ảnh
``` dart 
 wallpapersList(wallpapers: wallpapers, context: context)
```

#### ![190746982_191169396238127_7759098786397610990_n](https://user-images.githubusercontent.com/55725396/121247151-19ffa500-c8cc-11eb-8dc2-9f39c76f7ec6.png)
###  Bước 6: tạo giao diện hiển thị chi tiết ảnh và chức năng lưu ảnh
#### ![195273491_4207376809327151_7614060456203099605_n](https://user-images.githubusercontent.com/55725396/121247211-2b48b180-c8cc-11eb-87df-b9832b41e3ce.png)
 



