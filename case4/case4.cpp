/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <case4.hpp>

/**
 *  The init() and apply() methods must have C calling convention so that the blockchain can lookup and
 *  call these methods.
 */
extern "C" {
    void apply_foo() {
        // Store random record
        case4::record record;
        record.key = 1;
        record.value = 100;
        bool store_result = case4::Case4Table::store(record, N(case4));
        assert(store_result, "Store Record 1 Fails");

        // Load with i64i64i64
        case4::record retrieved_record;
        retrieved_record.key = 1;
        load_primary_i64i64i64( N(case4), N(case4), N(case4table), &retrieved_record, sizeof(retrieved_record) );
    }


    /**
     *  This method is called once when the contract is published or updated.
     */
    void init()  {
       eos::print( "Init World!\n" );
        
    }

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
       eos::print( "Hello World: ", eos::Name(code), "->", eos::Name(action), "\n" );
       if (code == N(case4)) {
           if (action == N(foo)) {
               apply_foo();
           }
       }
    }

} // extern "C"
