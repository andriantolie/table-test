/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace case3 {
    struct PACKED(record) {
        uint64_t key;
        uint64_t value;
     };

     using Case3Table = Table<N(case3),N(case3),N(case3table), record ,uint64_t>;
}
