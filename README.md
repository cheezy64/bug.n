## bug.n – Tiling Window Management

bug.n is a [tiling window management](https://en.wikipedia.org/wiki/Tiling_window_manager) 
add-on for the Explorer shell of Microsoft Windows. It is written in the scripting language 
[AutoHotkey](https://www.autohotkey.com/).

bug.n x.min is a minimal version of bug.n v10, which i.a. does not contain the following features:

* App calls (support for external apps)
* Custom or web interfaces
* Custom work areas
* dwm or i3wm layouts
* Dynamic (automatic) tiling
* Mouse-controlled
* Shell hook
* System status information
* (currently) Configuration templates (dwm, i3wm or xmonad)

Instead of dynamic tiling (reacting to closing and opening windows) and defined layouts 
bug.n x.min arranges the other windows in a group around the one, which is set to one of 
many defined positions. With the number of source files reduced, the directory structure 
is compressed.

### Running bug.n

##### Requirements

* Microsoft Windows 10 64-bit
* [Visual C++ redistributable packages for Visual Studio 2017 (vc_redist.x64.exe)](https://support.microsoft.com/en-us/help/2977003/the-latest-supported-visual-c-downloads)
* [AutoHotkey](https://www.autohotkey.com/download/ahk-install.exe) Unicode 64-bit 1.1.21 or higher
* [bug.n](https://github.com/fuhsjr00/bug.n/archive/x.min.zip) x.min branch

Extract the downloaded release file anywhere you like and run the main script 
(`app\main.ahk`) with AutoHotkey.

### Documentation

Please see the [documentation](./doc) for more information.

### License

bug.n is licensed under the GNU General Public License version 3. Please see the 
[LICENSE file](./LICENSE.md) for the full license text.
