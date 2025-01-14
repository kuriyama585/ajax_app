class ApplicationController < ActionController::Base
  before_action :basic_auth


  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      # username == 'admin' && password == '2222'
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  # 環境変数を読み込む記述に変更
      # 【翻訳】ポップアップを出す。⇨環境変数で設定したIDとパスワードを反映させてくだい。

    end
  end
end
