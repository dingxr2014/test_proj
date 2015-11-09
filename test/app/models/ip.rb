class Ip < ActiveRecord::Base
  validates :user, presence: true
  validates :ip, presence: true
end
