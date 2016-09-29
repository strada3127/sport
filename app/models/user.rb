class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  # :confirmable をコメントアウト
  # これをしないとUserを作成するときにエラーとなる
  # それ以外はお好みで
  include DeviseTokenAuth::Concerns::User
end
