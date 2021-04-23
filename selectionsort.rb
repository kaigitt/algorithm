def selection_sort array
  ary = array.dup
  (0...ary.length).each{|ix|
    # 最小値を検索
    min_num = ary[ix]
    min_pos = ix
    ((ix+1)...ary.length).each{|iy|
      if min_num > ary[iy]
        min_num = ary[iy]
        min_pos = iy
      end
    }

    # 最小値と ix を交換する
    ary[ix], ary[min_pos] = min_num, ary[ix]
  }
  ary
end

require 'pp'

array = Array.new(10){ rand(100) } # [0..100) の整数 10個の配列を生成
pp array
pp (sorted_array = selection_sort(array))
puts "is_sorted: #{array.sort == sorted_array}"