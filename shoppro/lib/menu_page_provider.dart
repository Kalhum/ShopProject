import 'dart:convert';
import 'package:http/http.dart' as http;

class MenuPageProvider {
  // ฟังก์ชันจะคืนค่าเป็น Future<List<dynamic>> ชัดเจน
  Future<List<dynamic>> connectApiProduct() async {
    var response = await http.get(Uri.http('localhost:2000', '/SelectDataProduct'));

    if (response.statusCode == 200) {
      // ดึงข้อมูลจาก JSON ที่ได้รับและแปลงเป็น List<dynamic>
      var decodeResponse = jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
      return decodeResponse;
    } else {
      throw Exception("Failed to load data from API");
    }
  }
}
