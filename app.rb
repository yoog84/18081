#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:barbershop.db"#spzdaem podkluchenie k BD(esli menyaetsya BD,menyaetsya & stroka)

#sozdaem class kotory budet predstavlyat nashu sushnost
class Client <ActiveRecord::Base#class nasleduetsya ot activerecord base(vse s bolsh bukvi)
	end

class Barber <ActiveRecord::Base#class nasleduetsya ot activerecord base(vse s bolsh bukvi)
	end

get '/' do
	#vivod na ekran vsex parikmaherov
	#@barbers = Barber.all
	#vivod na ekran vsex parikmaherov s sortirovkoy
	@barbers = Barber.order "created_at DESC"
	erb :index
end