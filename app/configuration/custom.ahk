/*
:title:     bug.n-x.min/configuration/custom

This file should include one of the configuration\*.ahk files as a template and any addi-
tional custom code (functions or modules). The file itself is included at the end of the 
main script and after the auto-execute section. The class `Customizations` is instantia-
ted after the class `Configuration` given, which allows overwriting configuration vari-
ables by putting them in `__New`. The function `Customizations._init` is called at the 
end of the auto-execute section, therewith commands can be executed after bug.n x.min 
started by putting them in there.
*/

#Include, %A_ScriptDir%\configuration\default.ahk

;; Custom code.
class Customizations {
  __New() {
    Global cfg, logger
		
    ;; Overwrite cfg.* variables.
    ;; If (A_ComputerName == <computer name>) {
    ;; }
    
    logger.info("**Custom** configuration loaded.", "Customizations.__New")
  }
  
  _init() {
    Global mgr
    
    ;; Overwrite hotkeys.
    ;; funcObject := ObjBindMethod(mgr, <function name> [, <function arguments>])
    ;; Hotkey, <key name>, %funcObject%
  }
}
