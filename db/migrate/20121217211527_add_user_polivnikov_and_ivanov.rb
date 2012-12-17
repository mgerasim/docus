#encoding: utf-8
class AddUserPolivnikovAndIvanov < ActiveRecord::Migration
  def up
  	User.create!(:name=>"Поливников Сергей Федорович", :role=>"Администратор", :password=>"3619", :password_confirmation=>"3619")
  	User.create!(:name=>"Иванов Иван Иванович", :role=>"Оператор", :password=>"1234", :password_confirmation=>"1234")
  end

  def down
  end
end
