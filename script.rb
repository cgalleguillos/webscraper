#!/usr/bin/env ruby
require 'rubygems'
require 'mechanize'

uri = URI 'https://www.forbes.com/sites/kevincashman/2013/04/03/the-five-dimensions-of-learning-agile-leaders/?sh=2673fdab7457'
agent = Mechanize.new

begin
    page = agent.get uri
    puts page.title
end