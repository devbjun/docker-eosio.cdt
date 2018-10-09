#include "hello.hpp"

void hello::hi( account_name user ) {
  print("Hello, ", name{user});
}
EOSIO_ABI(hello, (hi))