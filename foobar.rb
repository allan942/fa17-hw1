class Foobar

  def self.baz(a)
    int_a = a.collect{|s| s.to_i}
    add_two_a = int_a.map{|e| e += 2}
    odd_a = add_two_a.delete_if {|n| n % 2 == 1}
    uniq_a = odd_a.uniq
    small_a = uniq_a.delete_if {|n| n > 10}
    return small_a.inject(0, :+)
    
  end
end


