class Books
  attr_accessor :bookdb


  def initialize(args)
     @bookdb = *args
  end

  def find_book(n)

   t= @bookdb.find do |e|
     e['name'] =~ /#{n}/
   end

   t.length ==0 ? nil : t["price"]

  end

end