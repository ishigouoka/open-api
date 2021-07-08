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

## 4. ServerApiのinterfaceを生成
以下コマンドで、`generated-server`配下にソースが吐き出される。
```
$ ./generateServerInterface.sh
``` 

出力されるソースのpackageを変更したい場合は、以下ファイルで変更可能。
`api-spec/config_server.yaml`
注）API仕様が更新されたら再度、`2. 各yamlファイルを１つに統合`が必要です。

## 4'. Clientを生成
以下コマンドで、`generated-client`配下にソースが吐き出される。
```
$ ./generateClient.sh
``` 

出力されるソースのpackageを変更したい場合は、以下ファイルで変更可能。
`api-spec/config_client.yaml`

注）API仕様が更新されたら再度、`2. 各yamlファイルを１つに統合`が必要です。
