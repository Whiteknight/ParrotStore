#include "mongo.h"

#define STRING_TO_C_STRING(i, s, c, code) do { \
    char * (c) = Parrot_str_to_c_string((i), (s)); \
    { \
        code \
    } \
    Parrot_str_free_c_string((c)); \
} while(0)
