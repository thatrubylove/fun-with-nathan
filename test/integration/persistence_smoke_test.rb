require 'test_helper'

describe "the persistence layer will not cease to work!" do

  describe "class level methods" do
    subject { Person }

    it  "finders will continue to work" do
      -> {
        subject.find("id-that-is-fake")
      }.must_raise ActiveRecord::RecordNotFound
    end

    it "new constructor must still work" do
      instance = subject.new(names: "Eric James O'Kelly")
      instance.names.must_equal "Eric James O'Kelly"
    end
  end

  describe "instance level methods" do
    subject { Person.new }

    it "persisted? will continue to work" do
      subject.must_respond_to :persisted?
    end
  end
end
