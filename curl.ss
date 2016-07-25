(load-shared-object "libcurl.so")

(library (curl)
  (export)
  (import (chezscheme))

  (define curl-easy-init
    (foreign-procedure "curl_easy_init" () iptr))
  (define curl-easy-cleanup
    (foreign-procedure "curl_easy_cleanup" (iptr) void))
  (define curl-easy-reset
    (foreign-procedure "curl_easy_reset" (iptr) void))
  (define curl-easy-perform
    (foreign-procedure "curl_easy_perform" (iptr) int))
  (define curl-easy-getinfo
    (foreign-procedure "curl_easy_getinfo" (iptr int iptr) int))
  (define curl-easy-setopt
    (foreign-procedure "curl_easy_setopt" (iptr int iptr) int))
  (define curl-easy-duphandle
    (foreign-procedure "curl_easy_duphandle" (iptr) iptr))
  (define curl-easy-pause
    (foreign-procedure "curl_easy_pause" (iptr int) int))
  (define curl-easy-recv
    (foreign-procedure "curl_easy_recv" (iptr void* size_t iptr) int))
  (define curl-easy-send
    (foreign-procedure "curl_easy_send" (iptr void* size_t iptr) int))
  )
