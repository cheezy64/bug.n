/*
:title:     bug.n-x.min/configuration/default
:copyright: (c) 2019-2020 by joten <https://github.com/joten>
:license:   GNU General Public License version 3

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

class Configuration {
  __New() {
    Global logger
    
    this.name := "Default"
		this.positions := [[  0,   0,  50,  50]		;; top left
										 , [  0,   0, 100,  50]		;; top half
										 , [ 50,   0,  50,  50]		;; top right
										 , [  0,   0,  50, 100]		;; left half
										 , [ 25,   0,  50, 100]		;; centered half
										 , [ 50,   0,  50, 100]		;; right half
										 , [  0,  50,  50,  50]		;; bottom left
										 , [  0,  50, 100,  50]		;; bottom half
										 , [ 50,  50,  50,  50]		;; bottom right
										 , [  0,   0, 100, 100]]	;; maximized
    
    logger.info("**" . this.name . "** configuration loaded.", "Configuration.__New")
  }
}

;; pinWindowToDesktops(winId := 0, withWorkGroup := False)
;; moveWindowToDesktop(winId := 0, index := 0, delta := 0, sequence := "half-open", withWorkGroup := False)
;; moveWindowToPosition(winId := 0, index := 0, delta := 0, sequence := "closed")
;; moveWindowToWorkGroup(winId := 0, index := 0, delta := 0, sequence := "half-open", withWorkGroup := False)
;; moveWindowToWorkArea(winId := 0, index := 0, delta := 0, sequence := "closed", withWorkGroup := False)
;; switchToDesktop(index := 0, delta := 0, sequence := "closed")
;; switchToWindow(index := 0, delta := 0, sequence := "circle")
;; switchToWorkGroup(index := 0, delta := 0, sequence := "circle")
;; showWindowInformation(winId := 0)
;; toggleWindowHasCaption(winId := 0)
#+0::mgr.pinWindowToDesktops()
#+1::mgr.moveWindowToDesktop(, 1)
#+2::mgr.moveWindowToDesktop(, 2)
#+3::mgr.moveWindowToDesktop(, 3)
#+4::mgr.moveWindowToDesktop(, 4)
#^+Left::mgr.moveWindowToDesktop(,, -1)
#^+Right::mgr.moveWindowToDesktop(,, +1)
#+q::mgr.moveWindowToPosition(, 1)
#+w::mgr.moveWindowToPosition(, 2)
#+e::mgr.moveWindowToPosition(, 3)
#+a::mgr.moveWindowToPosition(, 4)
#+s::mgr.moveWindowToPosition(, 5)
#+d::mgr.moveWindowToPosition(, 6)
#+y::mgr.moveWindowToPosition(, 7)
#+x::mgr.moveWindowToPosition(, 8)
#+c::mgr.moveWindowToPosition(, 9)
#+Space::mgr.moveWindowToPosition(, 10)
#Enter::mgr.moveWindowToWorkGroup()
#+Left::mgr.moveWindowToWorkGroup(,, -1)
#+Right::mgr.moveWindowToWorkGroup(,, +1)
#+PgDn::mgr.moveWindowToWorkArea(,, -1)
#+PgUp::mgr.moveWindowToWorkArea(,, +1)
#+Down::mgr.moveWindowInWorkGroup(,, +1)
#+Up::mgr.moveWindowInWorkGroup(,, -1)
#+Enter::mgr.moveWindowInWorkGroup(, 1)

#1::mgr.switch("desktop", 1)
#2::mgr.switch("desktop", 2)
#3::mgr.switch("desktop", 3)
#4::mgr.switch("desktop", 4)
#^Left::mgr.switch("desktop",, -1)
#^Right::mgr.switch("desktop",, +1)
#Down::mgr.switch("window",, +1)
#Up::mgr.switch("window",, -1)
#Left::mgr.switch("workGroup",, -1)
#Right::mgr.switch("workGroup",, +1)
#^x::mgr.closeWindow()
#^i::mgr.showWindowInformation()
#Space::mgr.toggleWindowHasCaption()

#^l::logger.setLevel(, -1)
#^+l::logger.setLevel(, +1)
#+l::logger.writeCacheToFile(A_WorkingDir . "\..\..\bug.n-log.md")
#^q::ExitApp
#^r::Reload
