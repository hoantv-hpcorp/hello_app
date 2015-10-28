class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    
    User.create(name: "admin", email: "hoantv.hpcorp@gmail.com", 
      password: "Abcdef123", password_confirmation: "Abcdef123")
  end
end
