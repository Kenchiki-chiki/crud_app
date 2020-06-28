class UsersController < ApplicationController
  # 一覧画面に対応するアクション
  def index
    @users = User.all
  end

  # 新規登録画面に対応するアクション
  def new
    # Userモデルのオブジェクトを作り、インスタンス変数に格納する
    @user = User.new
  end

  def create
    # String Parameter の記述
    # user_paramsメソッドで指定した条件を満たしたら、データベースのUserテーブルにデータが追加される
    User.create(user_params)
  end

  # 詳細情報を詳細情報を表示するためのアクション
  def show
    @user = User.find(params[:id])
  end

  def edit
     # :id番目のレコードをデータベースから取りだす
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    # user_paramsメソッドで指定した条件を満たしたら、データベースのUserテーブルにデータが更新される
    user.update(user_params)
  end

  def destroy
    # :id番目のレコードをデータベースから取りだし、deleteメソッドで削除する
    user = User.find(params[:id])
    user.delete
  end

  # UsersControllerの中でしか使わないメソッドはprivateのしたに記述する
  private
  def user_params
    # この記述により、 user のパラメータに紐づいた name や age しかデータベースに登録できないようになる
    params.require(:user).permit(:name, :age)
  end







end