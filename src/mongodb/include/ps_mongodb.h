
#define STRING_TO_CSTRING(i, s, c, code) do { \
    char * (c) = Parrot_str_to_cstring((i), (s)); \
    fprintf(stderr, "Connecting to server '%s'", (c)); \
    { \
        code \
    } \
    Parrot_str_free_cstring((c)); \
} while(0)
