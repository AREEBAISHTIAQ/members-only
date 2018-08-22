class User < ApplicationRecord
    attr_accessor :remember_token
    validates :name,  presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }  
    has_secure_password
    has_many :posts, dependent: :destroy

    def User.new_token
        SecureRandom.urlsafe_base64
      end

      def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
      end

      def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
      end

      def forget
        update_attribute(:remember_digest, nil)
      end

      def feed
        Post.where("user_id = ?", id)
      end
end
