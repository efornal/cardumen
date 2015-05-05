require 'net/ldap'
require 'active_ldap'

ActiveLdap::Base.setup_connection :host => 'localhost',:port=> '1389', :base => 'dc=rectorado,dc=unl,dc=edu,dc=ar'

class User < ActiveLdap::Base
   ldap_mapping
end

#User.find(:all, '*').collect {|group| group.cn}
