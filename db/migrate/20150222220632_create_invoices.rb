class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer     :number,     null: false, limit: 8
      t.string      :reference,  null: false, limit: 6
      t.date        :due_date,   null: false
      t.date        :issue_date, null: false
      t.references  :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :invoices, :users
    add_index :invoices, :number, unique: true
  end
end
