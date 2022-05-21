# Component Samples

### package追加

```shell
flutter pub add [package name]
flutter pub add --dev [package name]
```

- FlutterFireを利用したFirebase設定でDartDefineの利用をやめるように変更
- Bundle IDを `com.example` から `com.example.general` に変更

install
```sh
npm install -g firebase-tools
dart pub global activate flutterfire_cli
flutterfire configure
```

https://zenn.dev/nagaho/articles/012e9ac3b0dfd1

### modelを変更したら実行する

```shell
flutter pub run build_runner build --delete-conflicting-outputs

# watchをつけると、コードの変更を自動検知して生成する
flutter packages pub run build_runner watch
```
