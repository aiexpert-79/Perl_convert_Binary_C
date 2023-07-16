use IO::File;

while (<DATA>) {
  /\S/ or next;
  my $file = sprintf "t/%03d.t", ++$i;
  my $f = IO::File->new(">$file") or die "$file: $!\n";
  print $f <<END
require 't/test_memalloc.pl';
$_
END
}

__DATA__

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DAUTOPURGE_MEMALLOC )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DNO_SLOW_MEMALLOC_CALLS )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DNO_SLOW_MEMALLOC_CALLS -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DNO_SLOW_MEMALLOC_CALLS -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DNO_SLOW_MEMALLOC_CALLS -DAUTOPURGE_MEMALLOC )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DNO_SLOW_MEMALLOC_CALLS -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DNO_SLOW_MEMALLOC_CALLS -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DAUTOPURGE_MEMALLOC )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DNO_SLOW_MEMALLOC_CALLS )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DNO_SLOW_MEMALLOC_CALLS -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DNO_SLOW_MEMALLOC_CALLS -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DNO_SLOW_MEMALLOC_CALLS -DAUTOPURGE_MEMALLOC )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DNO_SLOW_MEMALLOC_CALLS -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_TEST -DABORT_IF_NO_MEM -DNO_SLOW_MEMALLOC_CALLS -DAUTOPURGE_MEMALLOC -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );


test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_HASH_BITS=14 -DMEMALLOC_HASH_OFFSET=2 -DMEMALLOC_TEST )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_HASH_BITS=14 -DMEMALLOC_HASH_OFFSET=2 -DMEMALLOC_TEST -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_HASH_BITS=14 -DMEMALLOC_HASH_OFFSET=2 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_BUCKET_SIZE_INCR=1 -DMEMALLOC_TEST )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_BUCKET_SIZE_INCR=1 -DMEMALLOC_TEST -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_BUCKET_SIZE_INCR=1 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 114, CFLAGS => [qw( -DMEMALLOC_BUCKET_SIZE_INCR=100 -DMEMALLOC_TEST )] );
test( PLAN => 170, CFLAGS => [qw( -DMEMALLOC_BUCKET_SIZE_INCR=100 -DMEMALLOC_TEST -DDEBUG_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_BUCKET_SIZE_INCR=100 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );

test( PLAN => 522, CFLAGS => [qw( -DMEMALLOC_MAX_DIAG_DIST=1 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_MAX_DIAG_DIST=2 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_MAX_DIAG_DIST=3 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );
test( PLAN => 810, CFLAGS => [qw( -DMEMALLOC_MAX_DIAG_DIST=10000 -DMEMALLOC_TEST -DDEBUG_MEMALLOC -DTRACE_MEMALLOC )] );
