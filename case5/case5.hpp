/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace case5 {
    struct PACKED(record) {
        uint64_t key;
        uint64_t value;
     };

     using Case5Table = Table<N(case5),N(case5),N(case5table), record ,uint64_t>;
}
