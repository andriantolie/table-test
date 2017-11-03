/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace case2 {
    struct PACKED(record) {
        uint64_t key;
        uint64_t value;
     };

     using Case2Table = Table<N(case2),N(case2),N(case2table), record ,uint64_t>;
}
