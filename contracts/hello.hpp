#include <eosiolib/eosio.hpp>

using namespace eosio;

class hello : public eosio::contract {
  public:
    using contract::contract;

    /// @abi action
    [[eosio::action]]
    void hi ( account_name user );
};