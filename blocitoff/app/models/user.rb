class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  #has_many :emails
  #delegate :confirmation_sent_at, :confirmed_at, :confirmation_token, to: :primary_email


#   def primary_email
#     emails.primary || (emails.first if new_record?)
#   end
end
