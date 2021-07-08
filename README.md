# open-api

## Initialize
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

## Generate Api Interface
### 各yamlファイルを１つに統合
```
$ margeApiSpec.sh
```
