class User < ActiveRecord::Base
  #validates :password, presence: true
  #validates :name, presence: true
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  def mood
    self.nausea > self.happiness ? 'sad' : 'happy'
  end

end
