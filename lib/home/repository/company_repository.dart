import 'package:race24_client/home/model/company_info.dart';

abstract class CompanyRepository {
  Future<List<CompanyInfo>> getCompanyInfo();
}

class FakeCompanyRepository extends CompanyRepository {
  @override
  Future<List<CompanyInfo>> getCompanyInfo() async {
    // TODO: implement getCompanyInfo
    List<String> sample = '''상호 :더가다 / 대표 :모유미 
주소 :경남 창원시 성산구 충혼로 91,창원문성대학 경상관 1층 116호
메일 :thegada@thegada.com /고객센터 :050713937113
사업자번호 :898-01-03018
통신판매번호 :제2022-창원성산-0697호'''
        .split('\n');

    try {
      await Future.delayed(const Duration(seconds: 1));
      return sample
          .asMap()
          .entries
          .map(
            (e) => CompanyInfo(rowId: e.key, description: e.value),
          )
          .toList();
    } catch (e) {
      return [];
    }
  }
}
