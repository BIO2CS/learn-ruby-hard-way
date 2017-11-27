class Lexicon
  @lexicon = {
    "direction" => ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back'],
    'verb' => ['go', 'stop', 'kill', 'eat'],
    'stop' => ['the', 'in', 'of', 'from', 'at', 'it'],
    'noun' => ['door', 'bear', 'princess', 'cabinet']
  }

  def self.checkValues(value)
    number = nil
    begin
      number = Integer(value)
    rescue
      number = nil
    end

    if number
      return ['number', number]
    end

    keys = @lexicon.keys
    # puts "in checkValues, keys are #{keys}"
    for key in keys
      values = @lexicon[key]
      # puts "key is #{key}, values are #{values}"
      if values.include?(value)
        return [key, value]
      end
    end

    return ['error', value]
  end


  def Lexicon.scan(word)
    words = word.split(' ')
    # puts "in Lexicon.scan words are #{words}"
    result = []
    words.each do |value|
      result.push(checkValues(value))
    end
    return result
  end

end

# Lexicon.scan("north")
