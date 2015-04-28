require_relative 'linkedlist.rb'
require_relative 'link.rb'

describe "link" do
  describe "#initialize" do
    let(:my_link) {Link.new}

    it "makes a new link" do
      expect(my_link).to be_an_instance_of Link
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
