class AsciifyController < ApplicationController
  def index
  end

  def result
    @font=params[:input_font]
    @name=params[:input_name]
    @tel=params[:input_tel]
    @testname=params[:input_testname]
    @tdate=params[:input_tdate]
    @testdate=params[:input_testdate]
    
    a=Artii::Base.new(font: @font)
    @output_name = a.asciify(@name)
    @output_tel = a.asciify(@tel)
    @output_testname=a.asciify(@testname)
    @output_tdate=a.asciify(@tdate)
    @output_testdate=a.asciify(@testdate)
  end
end
