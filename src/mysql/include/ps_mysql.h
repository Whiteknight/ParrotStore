#include <mysql/mysql.h>

#define STRING_TO_CSTRING(i, s, c, code) do { \
    char * (c) = Parrot_str_to_cstring((i), (s)); \
    { \
        code \
    } \
    Parrot_str_free_cstring((c)); \
} while(0)

extern INTVAL MySqlDataTable_type;
extern INTVAL MySqlDataRow_type;
