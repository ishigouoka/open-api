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

## 2. HTMLのdocumentファイルを生成
以下コマンドで、<a href="./swagger-ui/dist/document.html">`document.html`</a>が生成されます。
```
$ ./generate-html-document.sh
```

## 3. ServerApiのinterfaceを生成
以下コマンドで、`generated-server`配下にソースが吐き出される。
```
$ ./generateServerInterface.sh
``` 

出力されるソースのpackageを変更したい場合は、以下ファイルで変更可能。
`api-spec/config_server.yaml`
注）API仕様が更新されたら再度、`2. 各yamlファイルを１つに統合`が必要です。

## 3'. Clientを生成
以下コマンドで、`generated-client`配下にソースが吐き出される。
```
$ ./generateClient.sh
``` 

出力されるソースのpackageを変更したい場合は、以下ファイルで変更可能。
`api-spec/config_client.yaml`
