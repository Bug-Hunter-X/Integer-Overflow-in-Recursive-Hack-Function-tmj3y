# Integer Overflow in Recursive Hack Function

This repository demonstrates a common error in Hack programming involving recursive functions and integer overflow. The `baz` function recursively calls itself, potentially leading to an integer overflow if the input is large enough.  The assertion in the code will fail due to this overflow.

The `bug.hack` file contains the buggy code, while `bugSolution.hack` provides a corrected version.

## How to Reproduce

1. Clone this repository.
2. Compile and run the `bug.hack` file using a Hack compiler (e.g., HHVM).
3. Observe that the assertion fails due to an integer overflow.

## Solution

The solution involves using a larger integer type, such as `int64`, to prevent overflow.  The `bugSolution.hack` file shows the corrected code using `int64`.