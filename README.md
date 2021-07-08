# open-api

## 1. Initialize
### swagger-uiの取得
```
$ git clone https://github.com/swagger-api/swagger-ui.git 
# << downloadに12分くらいかかる >>
```
### 依存ライブラリのinstall
macであれば。。。（node.jsを入れておくこと）
```
$ npm install
```
npmコマンドが使えなければ、package.jsonのdependenciesを頑張ってインストール

## 2. 各yamlファイルを１つに統合
以下コマンドでapi-spec/work/index.yamlが生成されます。
```
$ ./margeApiSpec.sh
```

## 3. HTMLのdocumentファイルを生成
以下コマンドで、<a href="./swagger-ui/dist/document.html">document.html</a>が生成されます。
```
$ ./generate-html-document.sh
```
