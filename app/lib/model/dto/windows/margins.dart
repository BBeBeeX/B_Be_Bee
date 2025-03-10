import 'dart:ffi';

base class MARGINS extends Struct {
  @Int32()
  external int left;

  @Int32()
  external int right;

  @Int32()
  external int top;

  @Int32()
  external int bottom;
}