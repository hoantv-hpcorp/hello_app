class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    
    User.create(
      name: "admin", 
      email: "hoantv.hpcorp@gmail.com", 
      password: "Abcdef123", 
      password_confirmation: "Abcdef123", 
      admin: true)
  end
end
