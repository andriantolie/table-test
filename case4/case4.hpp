/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace case4 {
    struct PACKED(record) {
        uint64_t key;
        uint64_t value;
     };

     using Case4Table = Table<N(case4),N(case4),N(case4table), record ,uint64_t>;
}
