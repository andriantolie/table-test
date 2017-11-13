/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <case3.hpp>

/**
 *  The init() and apply() methods must have C calling convention so that the blockchain can lookup and
 *  call these methods.
 */
extern "C" {
    void apply_foo() {
        // Store random record
        case3::record record1;
        record1.key = 1;
        record1.value = 100;
        bool store1_result = case3::Case3Table::store(record1, N(case3));
        assert(store1_result, "Store Record 1 Fails");

        case3::record record2;
        record2.key = 3;
        record2.value = 200;
        bool store2_result = case3::Case3Table::store(record2, N(case3));
        assert(store2_result, "Store Record 2 Fails");

        case3::record record3;
        record3.key = 5;
        record3.value = 300;
        bool store3_result = case3::Case3Table::store(record3, N(case3));
        assert(store3_result, "Store Record 3 Fails");

        case3::record record4;
        record4.key = 7;
        record4.value = 400;
        bool store4_result = case3::Case3Table::store(record4, N(case3));
        assert(store4_result, "Store Record 4 Fails");

        case3::record record5;
        record5.key = 9;
        record5.value = 500;
        bool store5_result = case3::Case3Table::store(record5, N(case3));
        assert(store5_result, "Store Record 5 Fails");

        case3::record front_record;
        bool get_front_result = case3::Case3Table::front(front_record);
        assert(get_front_result, "Get Front Record Fails");
        assert(front_record.value == 100, "Front Record is Invalid");

        case3::record back_record;
        bool get_back_result = case3::Case3Table::back(back_record);
        assert(get_back_result, "Get Back Record Fails");
        assert(back_record.value == 500, "Back Record is Invalid");

        case3::record middle_record;
        bool get_middle_result = case3::Case3Table::get(5, middle_record, N(case3));
        assert(get_middle_result, "Get Middle Record Fails");
        assert(middle_record.value == 300, "Middle Record is Invalid");

        // // The following test will not pass until db api is fixed (for next, previous, lower_bound, upper_bound)
        // case3::record next_record;
        // next_record.key = 1;
        // bool get_next_result = case3::Case3Table::PrimaryIndex::next(next_record);
        // assert(get_next_result, "Get Next Record Fails");
        // assert(next_record.value == 200, "Next Record is Invalid");

        // case3::record prev_record;
        // prev_record.key = 9;
        // bool get_prev_result = case3::Case3Table::PrimaryIndex::previous(prev_record);
        // assert(get_prev_result, "Get Prev Record Fails");
        // assert(prev_record.value == 400, "Prev Record is Invalid");

        // case3::record lower_bound_record;
        // bool get_lb_result = case3::Case3Table::PrimaryIndex::lower_bound(2, lower_bound_record);
        // assert(get_lb_result, "Get Lower Bound Record Fails");
        // assert(lower_bound_record.key == 3, "Lower Bound Record is Invalid");
        // assert(lower_bound_record.value == 200, "Lower Bound Record is Invalid");

        // case3::record upper_bound_record;
        // bool get_ub_result = case3::Case3Table::PrimaryIndex::upper_bound(2, upper_bound_record);
        // eosio::print("upper bound record");
        // eosio::print(upper_bound_record.key);
        // assert(get_ub_result, "Get Upper Bound Record Fails");
        // assert(upper_bound_record.key == 3, "Upper Bound Records is Invalid");
        // assert(upper_bound_record.value == 200, "Upper Bound Recorddd is Invalid");

         case3::record updated_record;
         updated_record.key = 1;
         updated_record.value = 1000;
         bool update_result = case3::Case3Table::update(updated_record, N(case3));
         assert(update_result, "Update Fails");

         case3::record get_updated_record;
         bool get_updated_result = case3::Case3Table::get(1, get_updated_record, N(case3));
         assert(get_updated_result, "Get Updated Record Fails");
         assert(get_updated_record.value == 1000, "Updated Record is Invalid");

         case3::record removed_record;
         removed_record.key = 5;
         bool remove_result = case3::Case3Table::remove(removed_record, N(case3));
         assert(remove_result, "RemoveRecord Fails");

         case3::record get_removed_record;
         bool get_removed_result = case3::Case3Table::get(5, get_removed_record, N(case3));
         assert(!get_removed_result, "Get Removed Record Fails");
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
       if (code == N(case3)) {
           if (action == N(foo)) {
               apply_foo();
           }
       }
    }

} // extern "C"
