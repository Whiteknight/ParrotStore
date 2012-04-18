
#include <sqlite3.h>

extern INTVAL SQLite3DataTable_type;
extern INTVAL SQLite3DataRow_type;

typedef struct __sqlite3_cb_args {
    Interp * interp;
    PMC * self;
    PMC * table;
    INTVAL have_colnames;
    INTVAL row_idx;
} SQLite3_cb_args;

#define ALLOC_CB_ARGS(a, i, s, t) do { \
    (a) = (SQLite3_cb_args*)malloc(sizeof(SQLite3_cb_args)); \
    (a)->interp = (i); \
    (a)->self = (s); \
    (a)->table = (t); \
    (a)->row_idx = 0; \
    (a)->have_colnames = 0; \
} while (0)

#define FREE_CB_ARGS(a) free(a);

#define STRING_TO_CSTRING(i, s, c, code) do { \
    char * (c) = Parrot_str_to_cstring((i), (s)); \
    { \
        code \
    } \
    Parrot_str_free_cstring((c)); \
} while(0)
