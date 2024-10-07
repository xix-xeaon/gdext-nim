{.warning[UnusedImport]:off.}

import ./../gen/builtinclasses/constructors
import ./../gen/classindex
import ./../gen/globalenums
import ./../gen/localenums
import gdext/coronation/header/classes

import gdobject; export gdobject

proc hasFeature*(self: DisplayServer; feature: DisplayServer_Feature): bool =
  expandMethodBind(className DisplayServer, "has_feature", 334065950)
  var `?param` = [getPtr feature]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc getName*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "get_name", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc helpSetSearchCallbacks*(self: DisplayServer; searchCallback: Callable; actionCallback: Callable): void =
  expandMethodBind(className DisplayServer, "help_set_search_callbacks", 1687350599)
  var `?param` = [getPtr searchCallback, getPtr actionCallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetPopupCallbacks*(self: DisplayServer; menuRoot: String; openCallback: Callable; closeCallback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_popup_callbacks", 3893727526)
  var `?param` = [getPtr menuRoot, getPtr openCallback, getPtr closeCallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuAddSubmenuItem*(self: DisplayServer; menuRoot: String; label: String; submenu: String; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_submenu_item", 2828985934)
  var `?param` = [getPtr menuRoot, getPtr label, getPtr submenu, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_item", 3401266716)
  var `?param` = [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddCheckItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_check_item", 3401266716)
  var `?param` = [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddIconItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_icon_item", 4245856523)
  var `?param` = [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddIconCheckItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_icon_check_item", 4245856523)
  var `?param` = [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddRadioCheckItem*(self: DisplayServer; menuRoot: String; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_radio_check_item", 3401266716)
  var `?param` = [getPtr menuRoot, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddIconRadioCheckItem*(self: DisplayServer; menuRoot: String; icon: gdref Texture2D; label: String; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_icon_radio_check_item", 4245856523)
  var `?param` = [getPtr menuRoot, getPtr icon, getPtr label, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddMultistateItem*(self: DisplayServer; menuRoot: String; label: String; maxStates: int32; defaultState: int32; callback: Callable = callable(); keyCallback: Callable = callable(); tag: Variant = default(Variant); accelerator: Key = keyNone; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_multistate_item", 3431222859)
  var `?param` = [getPtr menuRoot, getPtr label, getPtr maxStates, getPtr defaultState, getPtr callback, getPtr keyCallback, getPtr tag, getPtr accelerator, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuAddSeparator*(self: DisplayServer; menuRoot: String; index: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "global_menu_add_separator", 3214812433)
  var `?param` = [getPtr menuRoot, getPtr index]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemIndexFromText*(self: DisplayServer; menuRoot: String; text: String): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_index_from_text", 2878152881)
  var `?param` = [getPtr menuRoot, getPtr text]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemIndexFromTag*(self: DisplayServer; menuRoot: String; tag: Variant): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_index_from_tag", 2941063483)
  var `?param` = [getPtr menuRoot, getPtr tag]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuIsItemChecked*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_checked", 3511468594)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuIsItemCheckable*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_checkable", 3511468594)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuIsItemRadioCheckable*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_radio_checkable", 3511468594)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuGetItemCallback*(self: DisplayServer; menuRoot: String; idx: int32): Callable =
  expandMethodBind(className DisplayServer, "global_menu_get_item_callback", 748666903)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc globalMenuGetItemKeyCallback*(self: DisplayServer; menuRoot: String; idx: int32): Callable =
  expandMethodBind(className DisplayServer, "global_menu_get_item_key_callback", 748666903)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded Callable
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Callable)

proc globalMenuGetItemTag*(self: DisplayServer; menuRoot: String; idx: int32): Variant =
  expandMethodBind(className DisplayServer, "global_menu_get_item_tag", 330672633)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded Variant
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Variant)

proc globalMenuGetItemText*(self: DisplayServer; menuRoot: String; idx: int32): String =
  expandMethodBind(className DisplayServer, "global_menu_get_item_text", 591067909)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc globalMenuGetItemSubmenu*(self: DisplayServer; menuRoot: String; idx: int32): String =
  expandMethodBind(className DisplayServer, "global_menu_get_item_submenu", 591067909)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc globalMenuGetItemAccelerator*(self: DisplayServer; menuRoot: String; idx: int32): Key =
  expandMethodBind(className DisplayServer, "global_menu_get_item_accelerator", 936065394)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded Key
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Key)

proc globalMenuIsItemDisabled*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_disabled", 3511468594)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuIsItemHidden*(self: DisplayServer; menuRoot: String; idx: int32): bool =
  expandMethodBind(className DisplayServer, "global_menu_is_item_hidden", 3511468594)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc globalMenuGetItemTooltip*(self: DisplayServer; menuRoot: String; idx: int32): String =
  expandMethodBind(className DisplayServer, "global_menu_get_item_tooltip", 591067909)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc globalMenuGetItemState*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_state", 3422818498)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemMaxStates*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_max_states", 3422818498)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuGetItemIcon*(self: DisplayServer; menuRoot: String; idx: int32): gdref Texture2D =
  expandMethodBind(className DisplayServer, "global_menu_get_item_icon", 3591713183)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded gdref Texture2D
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Texture2D)

proc globalMenuGetItemIndentationLevel*(self: DisplayServer; menuRoot: String; idx: int32): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_indentation_level", 3422818498)
  var `?param` = [getPtr menuRoot, getPtr idx]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuSetItemChecked*(self: DisplayServer; menuRoot: String; idx: int32; checked: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_checked", 4108344793)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr checked]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemCheckable*(self: DisplayServer; menuRoot: String; idx: int32; checkable: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_checkable", 4108344793)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr checkable]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemRadioCheckable*(self: DisplayServer; menuRoot: String; idx: int32; checkable: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_radio_checkable", 4108344793)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr checkable]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemCallback*(self: DisplayServer; menuRoot: String; idx: int32; callback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_callback", 3809915389)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemHoverCallbacks*(self: DisplayServer; menuRoot: String; idx: int32; callback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_hover_callbacks", 3809915389)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemKeyCallback*(self: DisplayServer; menuRoot: String; idx: int32; keyCallback: Callable): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_key_callback", 3809915389)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr keyCallback]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemTag*(self: DisplayServer; menuRoot: String; idx: int32; tag: Variant): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_tag", 453659863)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr tag]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemText*(self: DisplayServer; menuRoot: String; idx: int32; text: String): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_text", 965966136)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr text]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemSubmenu*(self: DisplayServer; menuRoot: String; idx: int32; submenu: String): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_submenu", 965966136)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr submenu]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemAccelerator*(self: DisplayServer; menuRoot: String; idx: int32; keycode: Key): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_accelerator", 566943293)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr keycode]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemDisabled*(self: DisplayServer; menuRoot: String; idx: int32; disabled: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_disabled", 4108344793)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr disabled]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemHidden*(self: DisplayServer; menuRoot: String; idx: int32; hidden: bool): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_hidden", 4108344793)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr hidden]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemTooltip*(self: DisplayServer; menuRoot: String; idx: int32; tooltip: String): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_tooltip", 965966136)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemState*(self: DisplayServer; menuRoot: String; idx: int32; state: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_state", 3474840532)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr state]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemMaxStates*(self: DisplayServer; menuRoot: String; idx: int32; maxStates: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_max_states", 3474840532)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr maxStates]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemIcon*(self: DisplayServer; menuRoot: String; idx: int32; icon: gdref Texture2D): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_icon", 3201338066)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuSetItemIndentationLevel*(self: DisplayServer; menuRoot: String; idx: int32; level: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_set_item_indentation_level", 3474840532)
  var `?param` = [getPtr menuRoot, getPtr idx, getPtr level]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuGetItemCount*(self: DisplayServer; menuRoot: String): int32 =
  expandMethodBind(className DisplayServer, "global_menu_get_item_count", 1321353865)
  var `?param` = [getPtr menuRoot]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc globalMenuRemoveItem*(self: DisplayServer; menuRoot: String; idx: int32): void =
  expandMethodBind(className DisplayServer, "global_menu_remove_item", 2956805083)
  var `?param` = [getPtr menuRoot, getPtr idx]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuClear*(self: DisplayServer; menuRoot: String): void =
  expandMethodBind(className DisplayServer, "global_menu_clear", 83702148)
  var `?param` = [getPtr menuRoot]
  methodbind.ptrcall(self, addr `?param`[0])

proc globalMenuGetSystemMenuRoots*(self: DisplayServer): Dictionary =
  expandMethodBind(className DisplayServer, "global_menu_get_system_menu_roots", 3102165223)
  var ret: encoded Dictionary
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Dictionary)

proc ttsIsSpeaking*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "tts_is_speaking", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc ttsIsPaused*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "tts_is_paused", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc ttsGetVoices*(self: DisplayServer): TypedArray[Dictionary] =
  expandMethodBind(className DisplayServer, "tts_get_voices", 3995934104)
  var ret: encoded TypedArray[Dictionary]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Dictionary])

proc ttsGetVoicesForLanguage*(self: DisplayServer; language: String): PackedStringArray =
  expandMethodBind(className DisplayServer, "tts_get_voices_for_language", 4291131558)
  var `?param` = [getPtr language]
  var ret: encoded PackedStringArray
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(PackedStringArray)

proc ttsSpeak*(self: DisplayServer; text: String; voice: String; volume: int32 = 50; pitch: Float = 1.0; rate: Float = 1.0; utteranceId: int32 = 0; interrupt: bool = false): void =
  expandMethodBind(className DisplayServer, "tts_speak", 903992738)
  var `?param` = [getPtr text, getPtr voice, getPtr volume, getPtr pitch, getPtr rate, getPtr utteranceId, getPtr interrupt]
  methodbind.ptrcall(self, addr `?param`[0])

proc ttsPause*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "tts_pause", 3218959716)
  methodbind.ptrcall(self, nil)

proc ttsResume*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "tts_resume", 3218959716)
  methodbind.ptrcall(self, nil)

proc ttsStop*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "tts_stop", 3218959716)
  methodbind.ptrcall(self, nil)

proc ttsSetUtteranceCallback*(self: DisplayServer; event: DisplayServer_TtsUtteranceEvent; callable: Callable): void =
  expandMethodBind(className DisplayServer, "tts_set_utterance_callback", 109679083)
  var `?param` = [getPtr event, getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc isDarkModeSupported*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_dark_mode_supported", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc isDarkMode*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_dark_mode", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getAccentColor*(self: DisplayServer): Color =
  expandMethodBind(className DisplayServer, "get_accent_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc getBaseColor*(self: DisplayServer): Color =
  expandMethodBind(className DisplayServer, "get_base_color", 3444240500)
  var ret: encoded Color
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Color)

proc setSystemThemeChangeCallback*(self: DisplayServer; callable: Callable): void =
  expandMethodBind(className DisplayServer, "set_system_theme_change_callback", 1611583062)
  var `?param` = [getPtr callable]
  methodbind.ptrcall(self, addr `?param`[0])

proc mouseSetMode*(self: DisplayServer; mouseMode: DisplayServer_MouseMode): void =
  expandMethodBind(className DisplayServer, "mouse_set_mode", 348288463)
  var `?param` = [getPtr mouseMode]
  methodbind.ptrcall(self, addr `?param`[0])

proc mouseGetMode*(self: DisplayServer): DisplayServer_MouseMode =
  expandMethodBind(className DisplayServer, "mouse_get_mode", 1353961651)
  var ret: encoded DisplayServer_MouseMode
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(DisplayServer_MouseMode)

proc warpMouse*(self: DisplayServer; position: Vector2i): void =
  expandMethodBind(className DisplayServer, "warp_mouse", 1130785943)
  var `?param` = [getPtr position]
  methodbind.ptrcall(self, addr `?param`[0])

proc mouseGetPosition*(self: DisplayServer): Vector2i =
  expandMethodBind(className DisplayServer, "mouse_get_position", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc mouseGetButtonState*(self: DisplayServer): set[MouseButtonMask] =
  expandMethodBind(className DisplayServer, "mouse_get_button_state", 2512161324)
  var ret: encoded set[MouseButtonMask]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(set[MouseButtonMask])

proc clipboardSet*(self: DisplayServer; clipboard: String): void =
  expandMethodBind(className DisplayServer, "clipboard_set", 83702148)
  var `?param` = [getPtr clipboard]
  methodbind.ptrcall(self, addr `?param`[0])

proc clipboardGet*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "clipboard_get", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc clipboardGetImage*(self: DisplayServer): gdref Image =
  expandMethodBind(className DisplayServer, "clipboard_get_image", 4190603485)
  var ret: encoded gdref Image
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(gdref Image)

proc clipboardHas*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "clipboard_has", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc clipboardHasImage*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "clipboard_has_image", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc clipboardSetPrimary*(self: DisplayServer; clipboardPrimary: String): void =
  expandMethodBind(className DisplayServer, "clipboard_set_primary", 83702148)
  var `?param` = [getPtr clipboardPrimary]
  methodbind.ptrcall(self, addr `?param`[0])

proc clipboardGetPrimary*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "clipboard_get_primary", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc getDisplayCutouts*(self: DisplayServer): TypedArray[Rect2] =
  expandMethodBind(className DisplayServer, "get_display_cutouts", 3995934104)
  var ret: encoded TypedArray[Rect2]
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(TypedArray[Rect2])

proc getDisplaySafeArea*(self: DisplayServer): Rect2i =
  expandMethodBind(className DisplayServer, "get_display_safe_area", 410525958)
  var ret: encoded Rect2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Rect2i)

proc getScreenCount*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "get_screen_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getPrimaryScreen*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "get_primary_screen", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getKeyboardFocusScreen*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "get_keyboard_focus_screen", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc getScreenFromRect*(self: DisplayServer; rect: Rect2): int32 =
  expandMethodBind(className DisplayServer, "get_screen_from_rect", 741354659)
  var `?param` = [getPtr rect]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc screenGetPosition*(self: DisplayServer; screen: int32 = -1): Vector2i =
  expandMethodBind(className DisplayServer, "screen_get_position", 1725937825)
  var `?param` = [getPtr screen]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc screenGetSize*(self: DisplayServer; screen: int32 = -1): Vector2i =
  expandMethodBind(className DisplayServer, "screen_get_size", 1725937825)
  var `?param` = [getPtr screen]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc screenGetUsableRect*(self: DisplayServer; screen: int32 = -1): Rect2i =
  expandMethodBind(className DisplayServer, "screen_get_usable_rect", 2439012528)
  var `?param` = [getPtr screen]
  var ret: encoded Rect2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2i)

proc screenGetDpi*(self: DisplayServer; screen: int32 = -1): int32 =
  expandMethodBind(className DisplayServer, "screen_get_dpi", 181039630)
  var `?param` = [getPtr screen]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc screenGetScale*(self: DisplayServer; screen: int32 = -1): Float =
  expandMethodBind(className DisplayServer, "screen_get_scale", 909105437)
  var `?param` = [getPtr screen]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc isTouchscreenAvailable*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_touchscreen_available", 3323674545)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc screenGetMaxScale*(self: DisplayServer): Float =
  expandMethodBind(className DisplayServer, "screen_get_max_scale", 1740695150)
  var ret: encoded Float
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Float)

proc screenGetRefreshRate*(self: DisplayServer; screen: int32 = -1): Float =
  expandMethodBind(className DisplayServer, "screen_get_refresh_rate", 909105437)
  var `?param` = [getPtr screen]
  var ret: encoded Float
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Float)

proc screenGetPixel*(self: DisplayServer; position: Vector2i): Color =
  expandMethodBind(className DisplayServer, "screen_get_pixel", 1532707496)
  var `?param` = [getPtr position]
  var ret: encoded Color
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Color)

proc screenGetImage*(self: DisplayServer; screen: int32 = -1): gdref Image =
  expandMethodBind(className DisplayServer, "screen_get_image", 3813388802)
  var `?param` = [getPtr screen]
  var ret: encoded gdref Image
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(gdref Image)

proc screenSetOrientation*(self: DisplayServer; orientation: DisplayServer_ScreenOrientation; screen: int32 = -1): void =
  expandMethodBind(className DisplayServer, "screen_set_orientation", 2211511631)
  var `?param` = [getPtr orientation, getPtr screen]
  methodbind.ptrcall(self, addr `?param`[0])

proc screenGetOrientation*(self: DisplayServer; screen: int32 = -1): DisplayServer_ScreenOrientation =
  expandMethodBind(className DisplayServer, "screen_get_orientation", 133818562)
  var `?param` = [getPtr screen]
  var ret: encoded DisplayServer_ScreenOrientation
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(DisplayServer_ScreenOrientation)

proc screenSetKeepOn*(self: DisplayServer; enable: bool): void =
  expandMethodBind(className DisplayServer, "screen_set_keep_on", 2586408642)
  var `?param` = [getPtr enable]
  methodbind.ptrcall(self, addr `?param`[0])

proc screenIsKeptOn*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "screen_is_kept_on", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc getWindowList*(self: DisplayServer): PackedInt32Array =
  expandMethodBind(className DisplayServer, "get_window_list", 1930428628)
  var ret: encoded PackedInt32Array
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(PackedInt32Array)

proc getWindowAtScreenPosition*(self: DisplayServer; position: Vector2i): int32 =
  expandMethodBind(className DisplayServer, "get_window_at_screen_position", 2485466453)
  var `?param` = [getPtr position]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc windowGetNativeHandle*(self: DisplayServer; handleType: DisplayServer_HandleType; windowId: int32 = 0): int64 =
  expandMethodBind(className DisplayServer, "window_get_native_handle", 1096425680)
  var `?param` = [getPtr handleType, getPtr windowId]
  var ret: encoded int64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int64)

proc windowGetActivePopup*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "window_get_active_popup", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc windowSetPopupSafeRect*(self: DisplayServer; window: int32; rect: Rect2i): void =
  expandMethodBind(className DisplayServer, "window_set_popup_safe_rect", 3317281434)
  var `?param` = [getPtr window, getPtr rect]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetPopupSafeRect*(self: DisplayServer; window: int32): Rect2i =
  expandMethodBind(className DisplayServer, "window_get_popup_safe_rect", 2161169500)
  var `?param` = [getPtr window]
  var ret: encoded Rect2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2i)

proc windowSetTitle*(self: DisplayServer; title: String; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_title", 441246282)
  var `?param` = [getPtr title, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetTitleSize*(self: DisplayServer; title: String; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_title_size", 2925301799)
  var `?param` = [getPtr title, getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetMousePassthrough*(self: DisplayServer; region: PackedVector2Array; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_mouse_passthrough", 1993637420)
  var `?param` = [getPtr region, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetCurrentScreen*(self: DisplayServer; windowId: int32 = 0): int32 =
  expandMethodBind(className DisplayServer, "window_get_current_screen", 1591665591)
  var `?param` = [getPtr windowId]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc windowSetCurrentScreen*(self: DisplayServer; screen: int32; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_current_screen", 2230941749)
  var `?param` = [getPtr screen, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetPosition*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_position", 763922886)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowGetPositionWithDecorations*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_position_with_decorations", 763922886)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetPosition*(self: DisplayServer; position: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_position", 2019273902)
  var `?param` = [getPtr position, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_size", 763922886)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetSize*(self: DisplayServer; size: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_size", 2019273902)
  var `?param` = [getPtr size, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetRectChangedCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_rect_changed_callback", 1091192925)
  var `?param` = [getPtr callback, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetWindowEventCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_window_event_callback", 1091192925)
  var `?param` = [getPtr callback, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetInputEventCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_input_event_callback", 1091192925)
  var `?param` = [getPtr callback, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetInputTextCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_input_text_callback", 1091192925)
  var `?param` = [getPtr callback, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetDropFilesCallback*(self: DisplayServer; callback: Callable; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_drop_files_callback", 1091192925)
  var `?param` = [getPtr callback, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetAttachedInstanceId*(self: DisplayServer; windowId: int32 = 0): uint64 =
  expandMethodBind(className DisplayServer, "window_get_attached_instance_id", 1591665591)
  var `?param` = [getPtr windowId]
  var ret: encoded uint64
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(uint64)

proc windowGetMaxSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_max_size", 763922886)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetMaxSize*(self: DisplayServer; maxSize: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_max_size", 2019273902)
  var `?param` = [getPtr maxSize, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetMinSize*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_min_size", 763922886)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowSetMinSize*(self: DisplayServer; minSize: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_min_size", 2019273902)
  var `?param` = [getPtr minSize, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetSizeWithDecorations*(self: DisplayServer; windowId: int32 = 0): Vector2i =
  expandMethodBind(className DisplayServer, "window_get_size_with_decorations", 763922886)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector2i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector2i)

proc windowGetMode*(self: DisplayServer; windowId: int32 = 0): DisplayServer_WindowMode =
  expandMethodBind(className DisplayServer, "window_get_mode", 2185728461)
  var `?param` = [getPtr windowId]
  var ret: encoded DisplayServer_WindowMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(DisplayServer_WindowMode)

proc windowSetMode*(self: DisplayServer; mode: DisplayServer_WindowMode; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_mode", 1319965401)
  var `?param` = [getPtr mode, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetFlag*(self: DisplayServer; flag: DisplayServer_WindowFlags; enabled: bool; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_flag", 254894155)
  var `?param` = [getPtr flag, getPtr enabled, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetFlag*(self: DisplayServer; flag: DisplayServer_WindowFlags; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_get_flag", 802816991)
  var `?param` = [getPtr flag, getPtr windowId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc windowSetWindowButtonsOffset*(self: DisplayServer; offset: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_window_buttons_offset", 2019273902)
  var `?param` = [getPtr offset, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetSafeTitleMargins*(self: DisplayServer; windowId: int32 = 0): Vector3i =
  expandMethodBind(className DisplayServer, "window_get_safe_title_margins", 2295066620)
  var `?param` = [getPtr windowId]
  var ret: encoded Vector3i
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Vector3i)

proc windowRequestAttention*(self: DisplayServer; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_request_attention", 1995695955)
  var `?param` = [getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowMoveToForeground*(self: DisplayServer; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_move_to_foreground", 1995695955)
  var `?param` = [getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowIsFocused*(self: DisplayServer; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_is_focused", 1051549951)
  var `?param` = [getPtr windowId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc windowCanDraw*(self: DisplayServer; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_can_draw", 1051549951)
  var `?param` = [getPtr windowId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc windowSetTransient*(self: DisplayServer; windowId: int32; parentWindowId: int32): void =
  expandMethodBind(className DisplayServer, "window_set_transient", 3937882851)
  var `?param` = [getPtr windowId, getPtr parentWindowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetExclusive*(self: DisplayServer; windowId: int32; exclusive: bool): void =
  expandMethodBind(className DisplayServer, "window_set_exclusive", 300928843)
  var `?param` = [getPtr windowId, getPtr exclusive]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetImeActive*(self: DisplayServer; active: bool; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_ime_active", 1661950165)
  var `?param` = [getPtr active, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetImePosition*(self: DisplayServer; position: Vector2i; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_ime_position", 2019273902)
  var `?param` = [getPtr position, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowSetVsyncMode*(self: DisplayServer; vsyncMode: DisplayServer_VSyncMode; windowId: int32 = 0): void =
  expandMethodBind(className DisplayServer, "window_set_vsync_mode", 2179333492)
  var `?param` = [getPtr vsyncMode, getPtr windowId]
  methodbind.ptrcall(self, addr `?param`[0])

proc windowGetVsyncMode*(self: DisplayServer; windowId: int32 = 0): DisplayServer_VSyncMode =
  expandMethodBind(className DisplayServer, "window_get_vsync_mode", 578873795)
  var `?param` = [getPtr windowId]
  var ret: encoded DisplayServer_VSyncMode
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(DisplayServer_VSyncMode)

proc windowIsMaximizeAllowed*(self: DisplayServer; windowId: int32 = 0): bool =
  expandMethodBind(className DisplayServer, "window_is_maximize_allowed", 1051549951)
  var `?param` = [getPtr windowId]
  var ret: encoded bool
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(bool)

proc windowMaximizeOnTitleDblClick*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "window_maximize_on_title_dbl_click", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc windowMinimizeOnTitleDblClick*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "window_minimize_on_title_dbl_click", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc imeGetSelection*(self: DisplayServer): Vector2i =
  expandMethodBind(className DisplayServer, "ime_get_selection", 3690982128)
  var ret: encoded Vector2i
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(Vector2i)

proc imeGetText*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "ime_get_text", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc virtualKeyboardShow*(self: DisplayServer; existingText: String; position: Rect2 = rect2(0, 0, 0, 0); `type`: DisplayServer_VirtualKeyboardType = keyboardTypeDefault; maxLength: int32 = -1; cursorStart: int32 = -1; cursorEnd: int32 = -1): void =
  expandMethodBind(className DisplayServer, "virtual_keyboard_show", 3042891259)
  var `?param` = [getPtr existingText, getPtr position, getPtr `type`, getPtr maxLength, getPtr cursorStart, getPtr cursorEnd]
  methodbind.ptrcall(self, addr `?param`[0])

proc virtualKeyboardHide*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "virtual_keyboard_hide", 3218959716)
  methodbind.ptrcall(self, nil)

proc virtualKeyboardGetHeight*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "virtual_keyboard_get_height", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc cursorSetShape*(self: DisplayServer; shape: DisplayServer_CursorShape): void =
  expandMethodBind(className DisplayServer, "cursor_set_shape", 2026291549)
  var `?param` = [getPtr shape]
  methodbind.ptrcall(self, addr `?param`[0])

proc cursorGetShape*(self: DisplayServer): DisplayServer_CursorShape =
  expandMethodBind(className DisplayServer, "cursor_get_shape", 1087724927)
  var ret: encoded DisplayServer_CursorShape
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(DisplayServer_CursorShape)

proc cursorSetCustomImage*(self: DisplayServer; cursor: gdref Resource; shape: DisplayServer_CursorShape = cursorArrow; hotspot: Vector2 = vector2(0, 0)): void =
  expandMethodBind(className DisplayServer, "cursor_set_custom_image", 1816663697)
  var `?param` = [getPtr cursor, getPtr shape, getPtr hotspot]
  methodbind.ptrcall(self, addr `?param`[0])

proc getSwapCancelOk*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "get_swap_cancel_ok", 2240911060)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc enableForStealingFocus*(self: DisplayServer; processId: int64): void =
  expandMethodBind(className DisplayServer, "enable_for_stealing_focus", 1286410249)
  var `?param` = [getPtr processId]
  methodbind.ptrcall(self, addr `?param`[0])

proc dialogShow*(self: DisplayServer; title: String; description: String; buttons: PackedStringArray; callback: Callable): Error =
  expandMethodBind(className DisplayServer, "dialog_show", 4115553226)
  var `?param` = [getPtr title, getPtr description, getPtr buttons, getPtr callback]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc dialogInputText*(self: DisplayServer; title: String; description: String; existingText: String; callback: Callable): Error =
  expandMethodBind(className DisplayServer, "dialog_input_text", 3088703427)
  var `?param` = [getPtr title, getPtr description, getPtr existingText, getPtr callback]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc fileDialogShow*(self: DisplayServer; title: String; currentDirectory: String; filename: String; showHidden: bool; mode: DisplayServer_FileDialogMode; filters: PackedStringArray; callback: Callable): Error =
  expandMethodBind(className DisplayServer, "file_dialog_show", 1531299078)
  var `?param` = [getPtr title, getPtr currentDirectory, getPtr filename, getPtr showHidden, getPtr mode, getPtr filters, getPtr callback]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc fileDialogWithOptionsShow*(self: DisplayServer; title: String; currentDirectory: String; root: String; filename: String; showHidden: bool; mode: DisplayServer_FileDialogMode; filters: PackedStringArray; options: TypedArray[Dictionary]; callback: Callable): Error =
  expandMethodBind(className DisplayServer, "file_dialog_with_options_show", 1305318754)
  var `?param` = [getPtr title, getPtr currentDirectory, getPtr root, getPtr filename, getPtr showHidden, getPtr mode, getPtr filters, getPtr options, getPtr callback]
  var ret: encoded Error
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Error)

proc keyboardGetLayoutCount*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "keyboard_get_layout_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc keyboardGetCurrentLayout*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "keyboard_get_current_layout", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc keyboardSetCurrentLayout*(self: DisplayServer; index: int32): void =
  expandMethodBind(className DisplayServer, "keyboard_set_current_layout", 1286410249)
  var `?param` = [getPtr index]
  methodbind.ptrcall(self, addr `?param`[0])

proc keyboardGetLayoutLanguage*(self: DisplayServer; index: int32): String =
  expandMethodBind(className DisplayServer, "keyboard_get_layout_language", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc keyboardGetLayoutName*(self: DisplayServer; index: int32): String =
  expandMethodBind(className DisplayServer, "keyboard_get_layout_name", 844755477)
  var `?param` = [getPtr index]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc keyboardGetKeycodeFromPhysical*(self: DisplayServer; keycode: Key): Key =
  expandMethodBind(className DisplayServer, "keyboard_get_keycode_from_physical", 3447613187)
  var `?param` = [getPtr keycode]
  var ret: encoded Key
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Key)

proc keyboardGetLabelFromPhysical*(self: DisplayServer; keycode: Key): Key =
  expandMethodBind(className DisplayServer, "keyboard_get_label_from_physical", 3447613187)
  var `?param` = [getPtr keycode]
  var ret: encoded Key
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Key)

proc processEvents*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "process_events", 3218959716)
  methodbind.ptrcall(self, nil)

proc forceProcessAndDropEvents*(self: DisplayServer): void =
  expandMethodBind(className DisplayServer, "force_process_and_drop_events", 3218959716)
  methodbind.ptrcall(self, nil)

proc setNativeIcon*(self: DisplayServer; filename: String): void =
  expandMethodBind(className DisplayServer, "set_native_icon", 83702148)
  var `?param` = [getPtr filename]
  methodbind.ptrcall(self, addr `?param`[0])

proc setIcon*(self: DisplayServer; image: gdref Image): void =
  expandMethodBind(className DisplayServer, "set_icon", 532598488)
  var `?param` = [getPtr image]
  methodbind.ptrcall(self, addr `?param`[0])

proc createStatusIndicator*(self: DisplayServer; icon: gdref Texture2D; tooltip: String; callback: Callable): int32 =
  expandMethodBind(className DisplayServer, "create_status_indicator", 1904285171)
  var `?param` = [getPtr icon, getPtr tooltip, getPtr callback]
  var ret: encoded int32
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(int32)

proc statusIndicatorSetIcon*(self: DisplayServer; id: int32; icon: gdref Texture2D): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_icon", 666127730)
  var `?param` = [getPtr id, getPtr icon]
  methodbind.ptrcall(self, addr `?param`[0])

proc statusIndicatorSetTooltip*(self: DisplayServer; id: int32; tooltip: String): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_tooltip", 501894301)
  var `?param` = [getPtr id, getPtr tooltip]
  methodbind.ptrcall(self, addr `?param`[0])

proc statusIndicatorSetMenu*(self: DisplayServer; id: int32; menuRid: Rid): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_menu", 4040184819)
  var `?param` = [getPtr id, getPtr menuRid]
  methodbind.ptrcall(self, addr `?param`[0])

proc statusIndicatorSetCallback*(self: DisplayServer; id: int32; callback: Callable): void =
  expandMethodBind(className DisplayServer, "status_indicator_set_callback", 957362965)
  var `?param` = [getPtr id, getPtr callback]
  methodbind.ptrcall(self, addr `?param`[0])

proc statusIndicatorGetRect*(self: DisplayServer; id: int32): Rect2 =
  expandMethodBind(className DisplayServer, "status_indicator_get_rect", 3327874267)
  var `?param` = [getPtr id]
  var ret: encoded Rect2
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(Rect2)

proc deleteStatusIndicator*(self: DisplayServer; id: int32): void =
  expandMethodBind(className DisplayServer, "delete_status_indicator", 1286410249)
  var `?param` = [getPtr id]
  methodbind.ptrcall(self, addr `?param`[0])

proc tabletGetDriverCount*(self: DisplayServer): int32 =
  expandMethodBind(className DisplayServer, "tablet_get_driver_count", 3905245786)
  var ret: encoded int32
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(int32)

proc tabletGetDriverName*(self: DisplayServer; idx: int32): String =
  expandMethodBind(className DisplayServer, "tablet_get_driver_name", 844755477)
  var `?param` = [getPtr idx]
  var ret: encoded String
  methodbind.ptrcall(self, addr `?param`[0], addr ret)
  (addr ret).decode_result(String)

proc tabletGetCurrentDriver*(self: DisplayServer): String =
  expandMethodBind(className DisplayServer, "tablet_get_current_driver", 201670096)
  var ret: encoded String
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(String)

proc tabletSetCurrentDriver*(self: DisplayServer; name: String): void =
  expandMethodBind(className DisplayServer, "tablet_set_current_driver", 83702148)
  var `?param` = [getPtr name]
  methodbind.ptrcall(self, addr `?param`[0])

proc isWindowTransparencyAvailable*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "is_window_transparency_available", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

proc registerAdditionalOutput*(self: DisplayServer; `object`: Object): void =
  expandMethodBind(className DisplayServer, "register_additional_output", 3975164845)
  var `?param` = [getPtr `object`]
  methodbind.ptrcall(self, addr `?param`[0])

proc unregisterAdditionalOutput*(self: DisplayServer; `object`: Object): void =
  expandMethodBind(className DisplayServer, "unregister_additional_output", 3975164845)
  var `?param` = [getPtr `object`]
  methodbind.ptrcall(self, addr `?param`[0])

proc hasAdditionalOutputs*(self: DisplayServer): bool =
  expandMethodBind(className DisplayServer, "has_additional_outputs", 36873697)
  var ret: encoded bool
  methodbind.ptrcall(self, nil, addr ret)
  (addr ret).decode_result(bool)

const DisplayServer_vmap =
  Object.vmap.concat initTable[string, string]()
template vmap*(_: typedesc[DisplayServer]): Table[string, string] = DisplayServer_vmap