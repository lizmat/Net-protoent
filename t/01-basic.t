use v6.*;
use Test;

plan 15;

{
    use Net::protoent;
    for <
      &getprotobyname &getprotobynumber &getprotoent &setprotoent
      &endprotoent &getproto
    > -> $name {
       ok OUTER::MY::<<$name>>:exists, "is $name imported by default?";
    }
}

{
    use Net::protoent :FIELDS;
    for <
      &getprotobyname &getprotobynumber &getprotoent &setprotoent
      &endprotoent &getproto $p_name @p_aliases $p_proto
    > -> $name {
       ok OUTER::MY::<<$name>>:exists, "is $name imported by default?";
    }
}

# vim: expandtab shiftwidth=4
