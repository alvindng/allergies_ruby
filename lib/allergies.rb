class Fixnum

  define_method(:allergies) do
    copied_score = {'eggs' => 1, 'peanuts' => 2, 'shellfish' => 4, 'strawberries' => 8, 'tomatoes' => 16, 'chocolate' => 32, 'pollen' => 64, 'cats' => 128}
    allergen = copied_score.to_a.reverse.to_h
    score = self
    result = []
    allergen.each do |key, val|
      if score >= val
        result.push(key)
        score -= val
      end
    end
    result
  end
end
