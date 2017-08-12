def my_uniq(arr)

  results = []
  arr.each do |el|
    results << el unless results.include?(el)
  end
  results
end


def two_sum(arr)

  results = []
  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length
      results << [i, j] if arr[i] + arr[j] == 0
      j += 1
    end
    i += 1
  end
  results
end

def my_transpose(matrix)

  results = Array.new(matrix.length){Array.new(matrix[0].length)}

  (0...matrix.length).each do |y|
    (0...matrix[y].length).each do |x|
      results[x][y] = matrix[y][x]
    end
  end
  results

end

def stock_picker(prices)

  highest = nil
  dates = []
  i = 0
  while i < prices.length
    j = i + 1
    while j < prices.length
      profit = prices[j] - prices[i]
      if highest.nil? || profit > highest
        highest = profit
        dates = [i, j]
      end
      j += 1
    end
    i += 1
  end

  dates 

end
