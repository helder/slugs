package helder;

import helder.Set;

using haxe.iterators.StringIteratorUnicode;

final SEPARATE = new Set([
  ' '.code,
  '!'.code,
  '['.code,
  ']'.code,
  ','.code,
  '.'.code,
  '/'.code,
  '\\'.code,
  ';'.code,
  '<'.code,
  '>'.code,
  '?'.code,
  '_'.code,
  '-'.code,
  '|'.code,
  '('.code,
  ')'.code,
  '#'.code,
  "'".code,
  '*'.code,
  '{'.code,
  '}'.code
]);

@:expose function slugify(string: String, separator = '-'): String {
  var current = new StringBuf();
  final result = [];
  inline function push() {
    if (current.length == 0) return;
    result.push(current.toString());
    current = new StringBuf();
  }
  for (code in string.toLowerCase().unicodeIterator()) {
    if (code < ' '.code) continue;
    if (SEPARATE.exists(code)) push()
    else current.addChar(code);
  }
  push();
  return result.join(separator);
}