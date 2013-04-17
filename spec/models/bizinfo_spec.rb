# == Schema Information
#
# Table name: bizinfo
#
#  bizid   :string(32)       not null, primary key
#  title   :string(255)      not null
#  desc    :text             default(""), not null
#  account :string(128)      not null
#  owner   :string(50)       not null
#  boost   :float            default(1.0), not null
#

require 'spec_helper'

describe Bizinfo do
  pending "add some examples to (or delete) #{__FILE__}"
end
