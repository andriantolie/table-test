/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <case2.hpp>

/**
 *  The init() and apply() methods must have C calling convention so that the blockchain can lookup and
 *  call these methods.
 */
extern "C" {
    void apply_foo() {
        // Store random record
        case2::record record;
        record.key = 1;
        record.value = 100;
        case2::Case2Table::store(record, N(case2));
    }

    /**
     *  This method is called once when the contract is published or updated.
     */
    void init()  {
       eosio::print( "Init World!\n" );
        
    }

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
       eosio::print( "Hello World: ", eosio::Name(code), "->", eosio::Name(action), "\n" );
       if (code == N(case2)) {
           if (action == N(foo)) {
               apply_foo();
           }
       }
    }

} // extern "C"
