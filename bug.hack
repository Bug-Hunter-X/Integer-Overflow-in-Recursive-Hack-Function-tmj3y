function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return baz(x - 1) + bar(x);
  }
}

<<bug>>
assert baz(3) == 22; // This assertion fails
<<bug>>