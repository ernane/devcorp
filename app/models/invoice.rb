# == Schema Information
#
# Table name: invoices
#
#  number     :string(15)       not null, primary key
#  reference  :string(6)        not null
#  due_date   :date             not null
#  issue_date :date             not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer          default("0")
#

class Invoice < ActiveRecord::Base
  self.primary_key = 'number'

  belongs_to :user, counter_cache: true
  enum status: { open: 0, paid: 1, suspended: 2 }

end