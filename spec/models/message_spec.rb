require 'spec_helper'

describe Message do
  it "should validate the name" do
    message = Message.new
    message.save
    message.should_not be_valid
  end

  describe "#is_long" do
    context "if the message is long" do
      it "returns an true" do
        message = Message.new(name: "Hello World")
        message.is_long.should be_true
      end
    end
    context "the message is short" do
      it "returns false" do
        message = Message.new(name: "Hello")
        message.is_long.should be_false
      end
    end
  end
  describe ".shortest_message" do
    it "returns the shortest message" do
      message1 = Message.create(name: "Hello World")
      message2 = Message.create(name: "Hello")
      Message.shortest_message.should eq message2
    end
  end
end
