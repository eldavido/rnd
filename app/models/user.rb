# Represents a user for rnd.io
# Probably only need this for admins
class User < ActiveRecord::Base
  def self.find_or_create_from_auth_hash(auth_hash)
    if auth_hash and auth_hash.has_key?("provider") and auth_hash["provider"] == 'google'
      if(user = self.find_by_openid_claimed_identifier(auth_hash["uid"]))
        user
      else
        user = User.create(openid_claimed_identifier: auth_hash["uid"],
                           given_name: auth_hash["info"]["first_name"],
                           family_name: auth_hash["info"]["last_name"],
                           email_address: auth_hash["info"]["email"],
                           editor: false)
      end
    else
      nil
    end
  end

  def can_edit
    self.editor
  end
end
