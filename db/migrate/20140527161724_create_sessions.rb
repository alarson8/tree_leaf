class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :patient_name
      t.datetime :end_time
      t.datetime :start_time
    end
  end
end
