class ChangecolumnToNull < ActiveRecord::Migration[6.1]#pic,introduciton not Null規約を外す
  def up
    change_column_null :users, :pic, true
    change_column_null :users, :introduction, true
  end
end
