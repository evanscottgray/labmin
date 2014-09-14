class User < ActiveRecord::Base
  has_many :reservations

  before_create :get_ldap_name
  before_create :get_ldap_email
  before_create :get_ldap_phone

  def get_ldap_email
    self.email = Devise::LDAP::Adapter.get_ldap_param(self.login,"mail").first.to_s
  end

  def get_ldap_name
    self.ldap_name = Devise::LDAP::Adapter.get_ldap_param(self.login,"displayName").first.to_s
  end

  def get_ldap_phone
    self.ldap_phone = Devise::LDAP::Adapter.get_ldap_param(self.login,"ipPhone").first.to_s
  end

  devise :ldap_authenticatable, :rememberable, :trackable
end
