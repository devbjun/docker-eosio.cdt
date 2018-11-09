#include "hello.hpp"

ACTION hello::hi( name user ) {
  print_f( "Hello % from hello", user );
}

EOSIO_DISPATCH( hello, (hi) )