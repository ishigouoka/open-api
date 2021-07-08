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
npmコマンドが使えなければ、`package.json`のdependenciesを頑張ってインストール

## xx. 頑張ってapi-specを作る。
```
api-specは、api-spec/spec/referenceに格納
modelは、api-spec/spec/modelに格納
```

## 2. 各yamlファイルを１つに統合
以下コマンドで`api-spec/work/index.yaml`が生成されます。
```
$ ./margeApiSpec.sh
```

## 3. HTMLのdocumentファイルを生成
`api-spec/work/index.yaml`を、<a href="https://stoplight.io/studio/">stoplight-studio</a>とかでjsonに変換して、
`config/swagger-ui/index.json`に配置する。

以下コマンドで、<a href="./swagger-ui/dist/document.html">`document.html`</a>が生成されます。
```
$ ./generate-html-document.sh
```
