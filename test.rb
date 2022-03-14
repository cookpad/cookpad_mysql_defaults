# frozen_string_literal: true

require "bundler/inline"

gemfile(true) do
  source "https://rubygems.org"
  git_source(:github) { |repo| "https://github.com/#{repo}.git" }
  gem "activerecord", "~> 7.0.0"
  gem "mysql2"
end

require "active_record"
require "minitest/autorun"
require "logger"
require "mysql2"
require_relative "lib/cookpad_mysql_defaults/mysql_table_default_options"

ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Schema.define do
  create_table :payments, force: true do |t|
    t.decimal :amount, precision: 10, scale: 0, default: 0, null: false
  end
end

class Payment < ActiveRecord::Base; end

class BugTest < Minitest::Test
  def test_create_table_with_default_options
    Payment.create!(amount: 1)
    assert_equal 1, Payment.first.amount
    assert_equal "decimal(10,0)", Payment.columns.last.sql_type
  end
end
