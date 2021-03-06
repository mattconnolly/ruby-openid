require 'minitest/autorun'

class StartsWithTestCase < Minitest::Test
    def test_starts_with
        [["anything", ""],
         ["something else", ""],
         ["", ""],
         ["foos", "foo"],
        ].each{|str,target| assert(str.start_with?(target))}
    end

    def test_not_starts_with
        [["x", "y"],
         ["foos", "ball"],
         ["xx", "xy"],
        ].each{|str,target| assert(!(str.start_with? target)) }
    end

    def test_ends_with
        [["anything", ""],
         ["something else", " else"],
         ["", ""],
         ["foos", "oos"],
        ].each{|str,target| assert(str.end_with?(target))}
    end

    def test_not_ends_with
        [["x", "y"],
         ["foos", "ball"],
         ["xx", "xy"],
         ["foosball", "foosbal"],
        ].each{|str,target| assert(!(str.end_with? target)) }
    end
end
