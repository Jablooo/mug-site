# can't use type in a table it confuses rails
class RenameTypeToStyle < ActiveRecord::Migration[5.1]
  def change
    rename_column :items, :type, :style
  end
end
