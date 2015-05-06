# require 'ldap'



# class LdapCN
#   $HOST =    'localhost'
#   $PORT =    1389 #|| LDAP::LDAP_PORT
#   $SSLPORT = LDAP::LDAPS_PORT

#   def self.connect
#     conn = LDAP::Conn.new($HOST, $PORT)
#     conn.set_option(LDAP::LDAP_OPT_PROTOCOL_VERSION, 3)
#     conn.bind('cn=admin, dc=rectorado,dc=unl,dc=edu,dc=ar','root')
#     conn
#   end

# end

# class Employee

#   def self.all
#     conn = LdapCN.connect
#     entries = Array.new
#     conn.search("ou=Users,dc=rectorado,dc=unl,dc=edu,dc=ar",
#                 LDAP::LDAP_SCOPE_SUBTREE,
#                 "(cn=*)") do |entry|
#       #entries << entry
#       puts entry.inspect.to_s
#     end
#     conn.unbind
#     entries
#   end

# end


#-----------------------------------

class Employee < ActiveRecord::Base
  belongs_to :office

  def name_and_surname
    "#{self.surname}, #{self.name}"
  end

end
