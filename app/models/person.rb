class Person

  def initialize(*args)
    puts args.join.inspect
    super
  end

  def self.method_missing(meth, *args, &block)
    PersistenceLayer.send(meth, *args, &block)
  end

  def method_missing(meth, *args, &block)
    send(meth, *args, &block)
  end

  class PersistenceLayer < ActiveRecord::Base
    self.table_name = "people"
  end

end
