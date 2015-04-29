require_relative 'linkedlist.rb'
require_relative 'link.rb'

describe "link" do
  let(:my_link) {Link.new(7)}

  describe "#initialize" do
    it "makes a new link" do
      expect(my_link).to be_an_instance_of Link
    end

    it "has data" do
      expect(my_link.data).to equal 7
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
  let(:my_linked_list) {LinkedList.new}
  let(:my_link) {Link.new(5)}
  let(:my_other_link) {Link.new(6)}

  describe "#initialize" do
    it "makes a new linked list class" do
      expect(my_linked_list).to be_an_instance_of LinkedList
    end

    it "has an empty first" do
      expect(my_linked_list.first.data).to be nil
    end
  end

  describe "#find" do
    it "finds a link from data" do
      my_linked_list.first.next = my_link
      expect(my_linked_list.find(5)).to be my_link
    end
  end

  describe "#add" do
    it "adds data to the list" do
      my_linked_list.add(39492)
      expect(my_linked_list.first.next.data).to equal 39492
    end

    it "adds data twice to a list" do
      my_linked_list.add(6)
      my_linked_list.add(4)

      expect(my_linked_list.first.next.data).to equal 6
      expect(my_linked_list.first.next.next.data).to equal 4
    end
  end

  describe "finding out of order" do
    it "can find data after adding multiple" do
      my_linked_list.add(3)
      my_linked_list.add(-5)
      my_linked_list.add(100)

      expect(my_linked_list.find(100).data).to be 100
      expect(my_linked_list.find(3).data).to be 3
      expect(my_linked_list.find(-5).data).to be -5
    end
  end

  describe "#remove" do
    it "removes a single link" do
      my_linked_list.add(4)
      my_linked_list.remove(4)
      expect(my_linked_list.find(4)).to be nil
    end

    it "raises an error if it can't be found" do
      my_linked_list.add(4)
      expect{my_linked_list.remove(5)}.to raise_error
    end
  end

  describe "#insert" do
    it "can insert into a ll at an index" do
      index = 1
      my_linked_list.add(2)
      my_linked_list.add(4)
      my_linked_list.insert(3, index)
      p my_linked_list
      expect(my_linked_list.find(2).next.data).to be 3
      expect(my_linked_list.find(3).next.data).to be 4
    end
  end
end
