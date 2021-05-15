pragma solidity ^0.6.0;

// math operations with safety checks that throws on error

library SafeMath {
    
    // multiplies two numbers and throws an overflow
    
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if(a==0)
            return 0;
        uint256 c = a*b;
        assert(c/a == b);
        return c;
    }
    
    function div(uint256 a , uint256 b) internal pure returns (uint256) {
        // assert(b>0); // solidity automatically throws when dividing by 0
        uint256 c = a/b;
        // asser(a == b*c + a%b); // this always holds true, so no need of assert
        return c;
    }
    
    // substracts two numbers, throws an overflow i.e. if subtracted from a greater number;
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b<=a);
        return a-b;
    }
    
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a+b;
        assert(c >= a);
        return c;
    }
}


// SafeMath library for uint32

library SafeMath32 {
    
    function mul(uint32 a, uint32 b) internal pure returns(uint32) {
        if(a==0)
            return 0;
        uint32 c = a*b;
        assert(c/a ==b);
        return c;
    }
    
    function div(uint32 a, uint32 b) internal pure returns (uint32) {
        uint32 c = a/b;
        return c;
    }
    
    function sub(uint32 a, uint32 b) internal pure returns (uint32) {
        assert(b<=a);
        return a-b;
    }
    
    function add(uint32 a, uint32 b) internal pure returns (uint32) {
        uint32 c = a + b;
        assert(c>=a);
        return c;
    }
}


library SafeMath16 {
    
    function mul(uint16 a, uint16 b) internal pure returns (uint16) {
        if(a==0){
            return 0;
        }
        uint16 c = a*b;
        assert(c/a ==b);
        return c;
    }
    
    function div(uint16 a, uint16 b) internal pure returns (uint16) {
        uint16 c = a/b;
        return c;
    }
    
    function sub(uint16 a, uint16 b) internal pure returns (uint16) {
        assert(b<=a);
        return a-b;
    }
    
    function add(uint16 a, uint16 b) internal pure returns (uint16) {
        uint16 c = a + b;
        assert(c>=a);
        return c;
    }
}
