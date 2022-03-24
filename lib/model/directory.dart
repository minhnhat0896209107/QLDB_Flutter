import 'package:nguyenvanminhnhat_qldb_flutter/config/config.dart';

class Directory {
  final String? id, name, description, address, email, image;
  final int? number;

  Directory(
      {this.id,
      this.name,
      this.description,
      this.address,
      this.number,
      this.email,
      this.image});
}

final direct = <Directory>[
  Directory(
    id: "d01",
    name: "Nguyễn Văn Minh Nhật",
    description: "Hiền lành, dễ gần. Đam mê lập trình mobile",
    address: "Huế",
    email: "nhat@gmail.com",
    number: 0123556879,
    image: IMAGE_ANH4,
  ),
  Directory(
    id: "d02",
    name: "Nathan Nguyen",
    description: "Handsome, talent, manly, lucky",
    address: "America",
    email: "nathan@gmail.com",
    number: 0912355468,
    image: IMAGE_ANH2,
  ),
  Directory(
    id: "d03",
    name: "Nguyễn Xuân Quân",
    description: "Hay ngáo đá",
    address: "Hà tĩnh",
    email: "quan@gmail.com",
    number: 0814879679,
    image: IMAGE_ANH3,
  ),
  Directory(
    id: "d04",
    name: "Nguyễn Xuân Thêm",
    description: "Tính tình hiền lành, hay giúp đỡ bạn bè",
    address: "Huế",
    email: "them@gmail.com",
    number: 0848799679,
    image: IMAGE_ANH5,
  ),
  Directory(
    id: "d05",
    name: "Lê Ngọc Huy",
    description: "Học giỏi đẹp trai",
    address: "Huế",
    email: "huy@gmail.com",
    number: 0458785632,
    image: IMAGE_ANH1,
  ),
  Directory(
    id: "d06",
    name: "Nguyễn Văn Thanh Nhân",
    description: "Hiền lành dễ bị bạn bè bắt nạt, hay cà khịa",
    address: "Hà Nội",
    email: "nhan@gmail.com",
    number: 0814879679,
    image: IMAGE_ANH6,
  ),
  Directory(
    id: "d07",
    name: "Trần Văn Hoàng",
    description: "Trình độ sát gái thì khỏi bàn,bad boy số 1",
    address: "Huế",
    email: "hoang@gmail.com",
    number: 0125452107,
    image: IMAGE_ANH7,
  ),
  Directory(
    id: "d08",
    name: "Trần Công Nguyên",
    description: "Trai làng chịu chơi",
    address: "Huế",
    email: "nguyen@gmail.com",
    number: 0365897541,
    image: IMAGE_ANH8,
  ),
  Directory(
    id: "d09",
    name: "Võ Dương Kha",
    description: "Trình độ bắn bida giỏi",
    address: "Huế",
    email: "kha@gmail.com",
    number: 012547856,
    image: IMAGE_ANH9,
  ),
  Directory(
    id: "d10",
    name: "Nguyễn Văn Hùng",
    description: "Học giỏi điểm cao nhất trường",
    address: "Huế",
    email: "hung@gmail.com",
    number: 0132132158,
    image: IMAGE_ANH10,
  ),
];
