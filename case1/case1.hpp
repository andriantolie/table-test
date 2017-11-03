/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace case1 {
    struct PACKED(record) {
        uint64_t key;
        uint64_t value;
     };

     using Case1Table = Table<N(case1),N(case1),N(case1table),record,uint64_t>;
     using Case1TableDuplicate = Table<N(case1),N(case1),N(case1table),record,uint64_t>;
}
