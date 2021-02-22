require 'prime'

class MersenController < ApplicationController
  def input
  end

  def view
    if is_numeric(params[:val])==false or params[:val].to_i<0
      @result=[]
      return @count=0
    end
    num= params[:val].to_i
    count=1
    arr=[[1, 1]]
    2.upto(num) do |s|
      temp=mersen(s)
      if Prime.prime?(s)==true and temp>0 and Prime.prime?(temp)==true
        arr.push([count+=1, s])
      end
    end
    @result = arr
    @count = count
  end

  private

  def mersen(n)
    m=0
    if (n+1).to_s(2).count('1') == 1
      m=(n+1).to_s(2).count('0')
    end
    return m
  end

  def is_numeric(obj) 
    obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
  end
end
