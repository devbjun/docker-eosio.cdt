#include <eosiolib/eosio.hpp>

using namespace eosio;

CONTRACT hello : public eosio::contract {
  public:
    using contract::contract;

    /// @abi action
    ACTION hi ( name user );
};