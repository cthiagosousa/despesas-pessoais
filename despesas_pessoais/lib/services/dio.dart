import 'package:dio/dio.dart';


class DioService {
  static Dio dio({bool isAuth = false}) {
    //final UserProvider _userProvider = provider<UserProvider>();
    Map<String, dynamic> headers = {};
    
    if(isAuth) {
      headers = {
        "Bearer": "eyJhbGciOiJSUzI1NiIsImtpZCI6ImYyNGYzMTQ4MTk3ZWNlYTUyOTE3YzNmMTgzOGFiNWQ0ODg3ZWEwNzYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vZGVzcGVzYXMtcGVzc29haXMtMWY2MTYiLCJhdWQiOiJkZXNwZXNhcy1wZXNzb2Fpcy0xZjYxNiIsImF1dGhfdGltZSI6MTY0NDI4NDM5MiwidXNlcl9pZCI6ImRZM2x4UjBVVnhRVllkb251Qm8xeDdVdzhJZjIiLCJzdWIiOiJkWTNseFIwVVZ4UVZZZG9udUJvMXg3VXc4SWYyIiwiaWF0IjoxNjQ0Mjg0MzkyLCJleHAiOjE2NDQyODc5OTIsImVtYWlsIjoidGhpYWdvc291c2FkZXZAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJmaXJlYmFzZSI6eyJpZGVudGl0aWVzIjp7ImVtYWlsIjpbInRoaWFnb3NvdXNhZGV2QGdtYWlsLmNvbSJdfSwic2lnbl9pbl9wcm92aWRlciI6InBhc3N3b3JkIn19.IxCz37uf-eiT-KBVDFZxKdXDbLHJ8JLBJycHIEfacPbfwIT_SFoRi5ygsTnBrdpKM-nxEq303ZH8H-bONtolr5dOoFBjI8V5DtxKoWgPIQ3ZwMSJjjXneBUeZXELhts6M5eBlOMVmgGLkfz1wkdV6oK6Kxf9EMeL7EFSENCItLY4Hc8j1OHDJwF9Wm6idNFV06PkOk_aW9SjrmSyECeCqRJHEv6QymsPOAmS0SI6C2tcrSg0Vm2pCFAlIMe0ODyEy6o-cZ-o7a18YSfzwD1Bw-7dxMNEGbzFohRBBehO0BSEgehOxRXjFXT_yHMudX_LO3NGxHId5JrFzLOQTUJiyA",
      };
    }

    return Dio(BaseOptions(
      //baseUrl: BASE_URL,
      headers: headers,
    ));
  }
}