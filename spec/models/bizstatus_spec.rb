# == Schema Information
#
# Table name: bizstatus
#
#  bizid              :string(32)       not null, primary key
#  last_success_msgid :integer          default(10000000), not null
#  updated_at         :timestamp        not null
#

require 'spec_helper'

describe Bizstatus do
  pending "add some examples to (or delete) #{__FILE__}"
end
