require_relative 'linkedlist.rb'
require_relative 'link.rb'

describe "link" do
  let(:my_link) {Link.new(7)}

  describe "#initialize" do
    it "makes a new link" do
      expect(my_link).to be_an_instance_of Link
    end

    it "has a value" do
      expect(my_link.value).to equal 7
    end

    it "has a default nil next" do
      expect(my_link.next).to be nil
    end
  end

  describe "#next" do
    let(:next_link) {Link.new("a")}
    it "can set a next link" do
      my_link.next = next_link
      expect(my_link.next).to equal(next_link)
    end
  end
end

describe "linked list" do
  describe "#initialize" do
    let(:my_linked_list) {LinkedList.new}

    it "makes a new linked list class" do
      expect(my_linked_list).to be_an_instance_of LinkedList
    end
  end
end
