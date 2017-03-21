// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// Dart test for legally self referencing function type alias.

typedef void F(List
                   <G> // /// 00: compile-time error
                       l);
typedef void G(List<F> l);

main() {
  F foo(G g) => g;
  foo(null);
}
