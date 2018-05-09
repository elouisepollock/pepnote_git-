class AddImageToItems < ActiveRecord::Migration[5.1]
    def change
        add_reference :image, :user, foreign_key: true
    end
end