class User < ActiveRecord::Base
  belongs_to :interests, dependent: :destroy
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      @provider = user.provider
    end

  # validates :latitude, :longitude, presence: true
  
  end
end