# 参考記事・教材
[Rails Devise JWT Tutorial (updated)](https://dakotaleemartinez.com/tutorials/devise-jwt-api-only-mode-for-authentication/)

# DeviseとJWT
「Devise-jwtは、ユーザー認証にJSON Web Tokens(JWT)を使用するDevise拡張です。JSON Web Tokens(JWT)では、クッキーを使うのではなく、リクエストヘッダそのものにトークンが追加されます（クッキーとして保存/取得されるわけではありません）。これは（クッキーのように）ブラウザによって自動的に実行されるのではなく、通常、AJAX呼び出しの一部としてフロントエンドフレームワークによって処理されます。」


# 入力／出力
- ユーザ登録 ( POST http://localhost:4000/signup )  
  ![signup](https://github.com/yuta051214/rails-jwt-tutorial/assets/100740924/7d6c9155-f669-40d9-945a-f4c044d645d0)  
  ユーザ登録時のレスポンスにも、header に Authorization が含まれている。
  ***

- ログイン ( POST http://localhost:4000/login )  
  ![login](https://github.com/yuta051214/rails-jwt-tutorial/assets/100740924/2311a98f-7bf8-4bc2-8825-902132516c95)
  ***

- ログイン中のユーザ情報 ( GET http://localhost:4000/current_user )  
  ![current_user](https://github.com/yuta051214/rails-jwt-tutorial/assets/100740924/4dfd8585-61dd-4623-8733-5577c88f8395)
  ***

  (ログイン時に発行されるJWTをheader の Authorization に含めないと以下の before_action :authenticate_user! で弾かれる)  
  ![no authorization](https://github.com/yuta051214/rails-jwt-tutorial/assets/100740924/667efcd9-506b-4353-a714-0c45fb793b0f)
  ***

- ログアウト ( DELETE http://localhost:4000/logout )  
  ![logout](https://github.com/yuta051214/rails-jwt-tutorial/assets/100740924/ad06ca94-5535-47e7-a0d4-29fbb4b198d3)

