function foo(x: int64): int64 {
  return x + 1;
}

function bar(x: int64): int64 {
  return foo(x) * 2;
}

function baz(x: int64): int64 {
  if (x == 0) {
    return 0;
  } else {
    return baz(x - 1) + bar(x);
  }
}

assert baz(3) == 22; // This assertion now passes