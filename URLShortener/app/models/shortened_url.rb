class ShortenedUrl < ApplicationRecord
    validates :short_url, presence: true, uniqueness: true
    validates :long_url, presence: true, uniqueness: true
    validates :submitter_id, presence: true, uniqueness: true
    
    def self.random_code 
        random_code = SecureRandom.urlsafe_base64(16)
        if !ShortenedUrl.exist?(random_code)
            return random_code
        end 
    end

    def self.create_short_url(user, long_url)
        ShortenedUrl.create! 
        short_url = self.random_code
        long_url = long_url
        submitter_id = user.id 
    end
end