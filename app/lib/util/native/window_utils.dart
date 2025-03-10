import 'dart:ffi';
import 'package:ffi/ffi.dart';


typedef ShowWindowC = Int32 Function(IntPtr hWnd, Int32 nCmdShow);
typedef ShowWindowDart = int Function(int hWnd, int nCmdShow);

typedef SetWindowLongPtrC = IntPtr Function(IntPtr hWnd, Int32 nIndex, IntPtr dwNewLong);
typedef SetWindowLongPtrDart = int Function(int hWnd, int nIndex, int dwNewLong);

typedef GetWindowLongPtrC = IntPtr Function(IntPtr hWnd, Int32 nIndex);
typedef GetWindowLongPtrDart = int Function(int hWnd, int nIndex);

typedef SetWindowPosC = Int32 Function(IntPtr hWnd, IntPtr hWndInsertAfter, Int32 X, Int32 Y, Int32 cx, Int32 cy, Int32 uFlags);
typedef SetWindowPosDart = int Function(int hWnd, int hWndInsertAfter, int X, int Y, int cx, int cy, int uFlags);

typedef FindWindowC = IntPtr Function(Pointer<Utf16> lpClassName, Pointer<Utf16> lpWindowName);
typedef FindWindowDart = int Function(Pointer<Utf16> lpClassName, Pointer<Utf16> lpWindowName);

typedef GetModuleHandleC = IntPtr Function(Pointer<Utf16> lpModuleName);
typedef GetModuleHandleDart = int Function(Pointer<Utf16> lpModuleName);

typedef GetCurrentProcessIdC = Int32 Function();
typedef GetCurrentProcessIdDart = int Function();

typedef EnumWindowsC = Int32 Function(Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc, IntPtr lParam);
typedef EnumWindowsDart = int Function(Pointer<NativeFunction<EnumWindowsProc>> lpEnumFunc, int lParam);

typedef GetWindowThreadProcessIdC = Int32 Function(IntPtr hWnd, Pointer<Uint32> lpdwProcessId);
typedef GetWindowThreadProcessIdDart = int Function(int hWnd, Pointer<Uint32> lpdwProcessId);

typedef EnumWindowsProc = Int32 Function(IntPtr hwnd, IntPtr lParam);

class WindowUtils {
  static final DynamicLibrary user32 = DynamicLibrary.open('user32.dll');
  static final DynamicLibrary kernel32 = DynamicLibrary.open('kernel32.dll');

  static final FindWindowDart findWindow = user32
      .lookup<NativeFunction<FindWindowC>>('FindWindowA')
      .asFunction();

  static final GetCurrentProcessIdDart getCurrentProcessId = kernel32
      .lookup<NativeFunction<GetCurrentProcessIdC>>('GetCurrentProcessId')
      .asFunction();

  static final EnumWindowsDart enumWindows = user32
      .lookup<NativeFunction<EnumWindowsC>>('EnumWindows')
      .asFunction();

  static final GetWindowThreadProcessIdDart getWindowThreadProcessId = user32
      .lookup<NativeFunction<GetWindowThreadProcessIdC>>('GetWindowThreadProcessId')
      .asFunction();

  static final SetWindowLongPtrDart setWindowLongPtr = user32
      .lookup<NativeFunction<SetWindowLongPtrC>>('SetWindowLongPtrW')
      .asFunction();

  static final GetWindowLongPtrDart getWindowLongPtr = user32
      .lookup<NativeFunction<GetWindowLongPtrC>>('GetWindowLongPtrW')
      .asFunction();

  static final ShowWindowDart showWindow = user32
      .lookup<NativeFunction<ShowWindowC>>('ShowWindow')
      .asFunction();

  static final SetWindowPosDart setWindowPos = user32
      .lookup<NativeFunction<SetWindowPosC>>('SetWindowPos')
      .asFunction();

  static const int GWL_STYLE = -16;
  static const int WS_CAPTION = 0x00C00000;
  static const int WS_BORDER = 0x00800000;
  static const int WS_DLGFRAME = 0x00400000;
  static const int WS_POPUP = 0x80000000;
  static const int SW_MINIMIZE = 6; // 最小化窗口
  static const int SW_MAXIMIZE = 3; // 最大化窗口
  static const int SW_NORMAL = 1;   // 正常显示窗口
  static const int SW_CLOSE = 0;    // 关闭窗口

  // SetWindowPos flags
  static const int SWP_NOMOVE = 0x0002;
  static const int SWP_NOSIZE = 0x0001;
  static const int SWP_NOZORDER = 0x0004;
  static const int SWP_FRAMECHANGED = 0x0020;
  static const int WS_MAXIMIZE = 0x01000000;
  static const int WS_MINIMIZE = 0x20000000;

  static int? _appWindowHandle;
  static int _foundWindow = 0;


  static int _enumWindowCallback(int hwnd, int lParam) {
    final processIdPtr = calloc<Uint32>();
    try {
      getWindowThreadProcessId(hwnd, processIdPtr);
      if (processIdPtr.value == _currentProcessId) {
        _foundWindow = hwnd;
        return 0;
      }
      return 1;
    } finally {
      calloc.free(processIdPtr);
    }
  }

  static int _currentProcessId = 0;

  static int _findAppWindow() {
    if (_appWindowHandle != null) {
      return _appWindowHandle!;
    }

    _currentProcessId = getCurrentProcessId();
    _foundWindow = 0;

    // 使用静态回调函数
    final callback = Pointer.fromFunction<EnumWindowsProc>(_enumWindowCallback, 1);
    enumWindows(callback, 0);

    if (_foundWindow != 0) {
      _appWindowHandle = _foundWindow;
    }

    return _foundWindow;
  }

  static void hideTitleBar() {
    final hwnd = _findAppWindow();

    if (hwnd == 0) {
      print('Error: No foreground window found.');
      return;
    }

    final currentStyle = getWindowLongPtr(hwnd, GWL_STYLE);
    print('Current Style: $currentStyle');

    final newStyle = (currentStyle & ~WS_CAPTION & ~WS_BORDER & ~WS_DLGFRAME) | WS_POPUP;
    print('New Style: $newStyle');

    setWindowLongPtr(hwnd, GWL_STYLE, newStyle);

    setWindowPos(hwnd, 0, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE | SWP_NOZORDER | SWP_FRAMECHANGED
    );

    showWindow(hwnd, SW_NORMAL);
  }

  static void minimizeWindow() {
    final hwnd = _findAppWindow();
    showWindow(hwnd, SW_MINIMIZE);
  }

  static void maximizeWindow() {
    final hwnd = _findAppWindow();
    showWindow(hwnd, SW_MAXIMIZE);
  }

  static void restoreWindow() {
    final hwnd = _findAppWindow();
    showWindow(hwnd, SW_NORMAL);
  }

  static void closeWindow() {
    final hwnd = _findAppWindow();
    showWindow(hwnd, SW_CLOSE);
  }

  static bool isMaximized() {
    final hwnd = _findAppWindow();
    if (hwnd == 0) return false;

    final style = getWindowLongPtr(hwnd, GWL_STYLE);
    return (style & WS_MAXIMIZE) != 0;
  }

  static bool isMinimized() {
    final hwnd = _findAppWindow();
    if (hwnd == 0) return false;

    final style = getWindowLongPtr(hwnd, GWL_STYLE);
    return (style & WS_MINIMIZE) != 0;
  }


}