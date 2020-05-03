/*
:title:     bug.n-x.min/user-interface
:copyright: (c) 2019-2020 by joten <https://github.com/joten>
:license:   GNU General Public License version 3

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

class UserInterface {
  __New(index) {
    this.index := index
    this.name := "UserInterface"
    
    this.appCallFuncObject := ObjBindMethod(this, "_onAppCall")
    this.items := {"bar": {}, "content": {"tip": "01"}}
    this.updateIntervals := {}
    
    this.icon := ""
    this.tip := ""
  }
  
  __Delete() {
  }
  
  _init() {
    Global logger
    
    If (A_IsCompiled) {
      Menu, Tray, Icon, %A_ScriptFullPath%, -159
    } Else If FileExist(this.icon) {
      Menu, Tray, Icon, % this.icon
    } Else {
      logger.warning("Icon file ``" . this.icon . "`` not found.", "UserInterface.__New")
    }
    Menu, Tray, Icon
    
    this.updateItems("", True)
    For part, updateInterval in this.updateIntervals {
      If (updateInterval > 0) {
        funcObject := ObjBindMethod(this, "updateItems", part)
        SetTimer, % funcObject, % updateInterval
        logger.debug("Timer for updating items in User Interface #" . this.index . " (part _" . part . "_) set to " . updateInterval . " milliseconds.", "UserInterface._init")
      }
    }
    
    logger.info("Tray menu set with tooltip, icon and main window.", "UserInterface.__New")
  }
  
  _onAppCall(uri) {
  }
  
  updateItems(part := "", init := False) {
    If (this.items.content.HasKey("tip") || part == "") {
      If (init) {
        Menu, Tray, Tip, % this.tip
      }
    }
  }
}
