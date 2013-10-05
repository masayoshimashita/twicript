# -*- coding: utf-8 -*-
module Twicript_Core
  @@twi_vr = Hash.new([])
  @@twi_vr.default = nil
  def func_PR(v) # => Printl
    puts @@twi_vr[v] 
  end

  def func_VR(k,v)
    if /[0-9]{1,}/ =~ v
      @@twi_vr[k] = v.to_i
    else
      @@twi_vr[k] = v.gsub(/((^\'|^\")|(\'$|\"$))/,"") 
    end
  end

  def func_HE() # => Hello,World!!
     puts "Hello,World!!"
  end

  #演算
  def func_PP(vk,vv) # 加算
    vkr = vk.split(",")
    v = 0
    (0..vkr.length-1).each{|i|
      v += @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_DD(vk,vv) # 減算
    vkr = vk.split(",")
    v = @@twi_vr[vkr[0]]
    
    (1..vkr.length-1).each{|i|
      v -= @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_ME(vk,vv) # 除算
    vkr = vk.split(",")

    (0..vkr.length-1).each{|i|
      t = @@twi_vr[vkr[i]]
      #v = @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_SP(vk,vv) # 乗算
    vkr = vk.split(",")

    (1..vkr.length-1).each{|i|
      v = @@twi_vr[vkr[i]]
    }
    @@twi_vr[vv] = v
  end

  def func_XX(vk,vv) # 累乗(変数,数)
    puts vk
    vkr = vk.split(",")
    puts vkr
  end    
  # 装飾
  def func_LI()
      puts "-"*10
  end

end
