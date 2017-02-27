gem 'minitest', '>= 5.0.0'

#loading 2 gems: MINITEST == TESTING SUITE, PRIDE == COLOR FUN
require 'minitest/pride'
require 'minitest/autorun'

#require_relative read in hello_world.rb #does need to be in a same forlder
require_relative 'hello_world'


describe "Hello World" do #DO CREATES BLOCK! REGARDING "Hello World"
  #it line == TITLE, EACH IT IS 1 TEST CASE
  it "When given no name, it should greet the world!" do
    #WHEN NO NAME PASSED TO METHOD hello_world, it should equal 'Hellow World'
    expect(hello_world).must_equal 'Hello, World!'
  end

  it "When given 'Alice' it should greet Alice!" do
     ## i am skipping this test right now
    expect(hello_world 'Alice').must_equal 'Hello, Alice!'
  end

  it "When given 'Bob' it should greet Bob!" do
    expect(hello_world 'Bob').must_equal 'Hello, Bob!'
  end

  it "When given an empty string it should greet the world!" do
    expect(hello_world '').must_equal 'Hello, World!'
  end
end
