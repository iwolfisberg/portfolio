class TranslateProjects < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        Project.create_translation_table!({
          :description => :string,
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Project.drop_translation_table! :migrate_data => true
      end
    end
  end
end
