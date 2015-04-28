require_relative 'linkedlist.rb'

describe "linked list" do
  describe "#initialize" do
    let(:my_linked_list){LinkedList.new}

    it "makes a new linked list class" do
      expect(my_linked_list).to be_an_instance_of LinkedList
    end
  end
end
