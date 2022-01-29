	
; 20220129144938
/*  20220129144734 20220126132410 20220111122116     autorun-all.ahk - current prefered variant 20211125034448  

 autorun-all.ahk - FROM "%Dropbox%\_JEFF\_AUTORUN\autorun-all.AHK" --- !! THIS IS FROM OUR DROPBOX FOLDER SUBSUMED INTO OUR MICROSOFT ONEDRIVE

current hotkey ctrl+alt+shift+A opens this file

   ^!+a:: run notepad++.exe "C:\Users\Preferred User\OneDrive - Gordon Law Offices\Dropbox (formerly)\_JEFF\_AUTORUN\autorun-20210801230449  .ahk", ,max

 20220110152359  20220110041215 20220110020201 20211125034448
 20220110231109 %dropbox%	\_JEFF\_AUTORUN\autorun-20210801230449  .ahk
*/ 


/* 	ABOUT ENVIRONMENTAL VARIABLES

ENVIRONMENTAL VARIABLE MUST BE SET TO: 


*/	



/* Script Function:  This Macro/Text Rpl Script autoruns/syncs on all office PCs 
(on site or remote)  
It is set automatically reload periodically, and the script is sync'd with Onedrive GLO folder

AutoHotkey Version: 1.x
Language:       English
Platform:       Win9x/NT
Author:         J Gordon jsgordon420@hotmail.com	

*/



;{{  standard intro ; -----------------------------------------------------; 

#NoEnv 
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%  
Menu, Tray, Icon, automate.ico,,,


;}} 

;; end of intro ; -----------------------------------------------------; 

;{{ ;;BEGINNING OF LOOPED ITEMS

loop

^!+a:: run notepad++.exe "C:\Users\Preferred User\OneDrive - Gordon Law Offices\Dropbox (formerly)\_JEFF\_AUTORUN\autorun-20210801230449  .ahk", ,max



;-----------------------------------------------------

;{{   SANDBOX -=- SANDBOX -=- SANDBOX -=- SANDBOX -=- 

:o:/wav::%jeff%\Junction\Message\wave.wav
::/pcname::msgbox a_computername
::/nc::nircmd
::/nss::nircmd screensaver
::/ncsp::nircmd.exe speak text ~$clipboard$

::npp::Notepad++
:o:/msg10:: nircmd remote \\office10 infobox "

/* future nircmd combos


speah ideas
other clip commands
window manip 
*/

::/dism1::DISM /online /Cleanup-Image /ScanHealth
::/dism2::DISM /Online /Cleanup-Image /RestoreHealth

;;----------
::/dirj::
send dir/ad "" | findstr "<JUNCTION>"
;sendinput {Left 24}
return
;;----------

;{{ #2021-11-17 20211117141334  Environmenal Variable quicktexts 

:o:%od::
send {asc 0037}onedrive{asc 0037}
return

:o:%ad::
send {asc 0037}appdata{asc 0037}
return

:o:%ql::
send {asc 0037}quicklaunch{asc 0037}
return
;}}

;  open Recent items with Ctrl+Alt+Shift+R
^+!R::
send explorer.exE recent,,,
return
;-----------------------

;--------
::/dve::"C:\Program Files (x86)\Sony\Digital Voice Editor 3\DVEdit.exe"

::/su::shell:startup

;{{ Paste Clipboard Entry w/o Commas ==-=-=-=

clipboard = 
send ^C 
ClipWait  ; Wait for the clipboard to contain text.
#!f7::
Clipboard := RegExReplace(Clipboard , ",", "")
send ^V 
return
;}}

;{{ more text and launch macros 

::icap::C:\Program Files (x86)\IrfanView\i_view32.exe /capture=0 /convert=C:\_LOGS\capture_###_$U(%d%m%Y_%H%M%S).jpg

!^N::run c:\Windows\notepad.exe ,,,
!^C::run C:\Windows\SysWOW64\calc.exe ,,,
^!+E::run C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE ,,,

!#f1::      ;
send ^c
Clipboard := RegExReplace(Clipboard, "`am)^\s*\w|\si\s|[.?!]\s*\w", "$U0") ; uppercase first letter,a single i or After ".?!"
send ^v
return

::/dtt::
send %A_Now%
;send {#}%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%
return
;}} 

;{{ ----------------- NEW #2021-06-28 -----------------
^!9::
send %A_Now%
;send {#}%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%
return


;{{ ----------------- NEW #2021-06-28 -----------------

; -------- Ctrl+Alt+1 (one)  inserts current DATE WITH HASHTAG   #YYYY-MM-DD -------------------
^!1::
send {#}%A_YYYY%-%A_MM%-%A_DD%
return

^!8::
;send %A_Now%
send {#}%A_YYYY%-%A_MM%-%A_DD%:%A_Hour%:%A_Min%:
return

#b:: 
clipboard = =-=-=-BREAK-=-=-=
Return

;}}


;****************************************************
;}} ENDofSANDBOX -=- ENDofSANDBOX -=- ENDofSANDBOX -=-
;}}****************************************************



;{{------- MAIN  PLACE TO PUT TEXT REPLACEMENTS ----------- (also see TEXT REPLACEMENTS ADVANCED)

 
	
;{{  EMAIL ADDRESS TEXT REPLACEMENTS
;
; BEGINNING WITH HARRY'S!!
;=-=-=-=-=-=-=-=-=-==-=-=-=-=
/*
--	EMAIL ADDRESS MACROS FOLLOW A CERTAIN FORM
;
	-- Generally they go "/e" then "/e2" and so forth 
	--  if an email address is just /e or just /e(&a number)it's probably Harry's
	--  for other staff or family members, it follows the same form 
		(just with your initials, and a number if you have several)
	
	---	So for instance my first email address 
		is /ejg = jsgordon420@hotmail.com  ... my gmail one is /ejg3 = jsgordon420@gmail.com
	
	they're often times may seem no rhyme nor reason to the numbering. that usually means that That macro has been in place for years and years and it's easier not to replace it 
	(however, I can and DO often add *additional* shortcut keys that will yield the same result.  
		ie: /glous
-- as in /gl /gl /gl 	
	
	them up to be / e for dads first email address / 52 / E3 etc etc. First staff it's generally going to be / e j v or E JP or ESPN or Fiji or ejg

*/

; email 1 -- Bellsouth (old)
;
:o:/e::gordonhg@bellsouth.net 	;removed from AIMKeys for this script #2021-10-31

; email 2 - Hotmail == gordonharry@hotmail.com
;
:o:/e2::gordonharry@hotmail.com    ;removed from AIMKeys for this script #2021-10-31

; email 3 -- [UNUSED! - triad.rr.com --so I am leaving it blank for now #2021-10-31]
;
; :o:/e3::     

; email 4 -- GLO's Google/Gmail (
;  
:o:/e4::gordonlaw330@gmail.com

; email 5  -- OUR NEWEST EMAIL ADDRESS  -- harrygordon@gordonlawoffices.us
;	HINT:     hgglo = does the same thing!!
;    ===============================
:o:/e5::harrygordon@gordonlawoffices.us
:o:hgglo::harrygordon@gordonlawoffices.us



; email 6 -- [TEMP MICROSOFT EMAIL BEFORE @gordonlawoffices.us  WAS FUNCTIONAL (don't delete)
;
:o:/e6::harrygordon@gordonlawofficesus.onmicrosoft.com

;{{other email adds
:o:/celj::336-254-7576
:o:/celj-::3362547576
:o:/celj2::336-891-0420
:o:/esgs::gordonlaw.galaxys@gmail.com
:o:/ejg::jsgordon420@hotmail.com
:o:/ejg3::jsgordon420@gmail.com
:o:/ejg4::3362547576@vzwpix.com
:o:/ejgalias::fnes2rv6k@relay.firefox.com
:o:/ejgs::support@gordonlawoffices.us
:o:/ejs::support@gordonlawoffices.us
:o:/esu::support@gordonlawoffices.us

; :o:ejgftp::jsggso7676@gordonlawoffices.us
; :o:/ejglo::jsgordon@gordonlawoffices.us


;:o:/e7::gordonlaw330@outlook.com   IN AUTOCORRECT.AKD #2021-03-24 17:45
;:o:/e2::gordonharry@hotmail.com   IN AIMKEYS #2021-03-24 17:40
:o:/ecg::gordoncarolynd@hotmail.com
;}}

;{{ Usernames etc

:o:j4::jsgordon420
:o:/pu::Preferred User
;}}

;{{ Computer names and ip stuff

:o:o7::office7
:o:o8::office8
:o:o9::office9
:o:o0::office0
:o:o10::office10
:o:sp4::surfacepro4
:o:hgh::hgg-home08
:o:o9::OFFICE9
:o:o7::OFFICE7
:o:o8::OFFICE8

; :o:o0::OFFICE0
; :o:i5::Inspiron15
; :o:i5::Inspiron1

:o:/web::gordonlawoffices.us
:o:/glous::www.gordonlawoffices.us
; :o:/pu::Preferred User
:o:/pc::Preferred Company
:o:/po::Preferred Organization
::/gl::Gordon Law Offices


;}}


::/dirj::dir/ad/on | findstr "<JUNCTION>"

; ------ OTHER TEXT REPLACEMENTS -----------------------------------------------


:o:/ss::nircmd screensaver
:o:/vid::mkv OR mp4 OR avi OR ts OR mov OR vob OR mpg OR wmv
::/psr::psshutdown -r 
::/excelrows::=MOD(ROW(),2)=1
:o:/h1::http://192.168.1.
:o:/h::http://


:o://s::
Sendraw §
return


;  :o:o47::OFFICE4-WIN7

::backg::_back to this Client Matter folder on G
::robo::robocopy SOURCE DEST /mir /zb /xn  
::/st::HTTP://WWW.SPEEDTEST.NET
:o:f/::FILE:///
;::smenu::explorer "C:\Documents and Settings\Preferred User\Start Menu"
;::smenua::C:\Documents and Settings\All Users\Start Menu
;::stmenua::C:\Documents and Settings\All Users\Start Menu\Programs\Startup
;::stmenu::C:\Documents and Settings\Preferred User\Start Menu\Programs\Startup
::a2a::explorer %Dropbox%\_JEFF\_ADD TO ARCHIVES
:://cs::\\Cs-wx86d\cloudshare

:o:/wf::https://workflowy.com/{#}/?q=
:o:/wflc::https://workflowy.com/#?q=last-changed:
;:o:/d::c:\Users\Preferred User\Desktop\
:o:/cj2::336-891-0420
:o:/lc::last-changed:
;   :o:/gja::g:\jeff\archives

;   ::/rem::`remote.utorrent.com

;(( ----------GOOGLE CLOUD VOICE to TEXT ITEMS--------------

:o:/vr::gcloud ml speech recognize-long-running  --language-code=en-US |clip   {left 31}
:o:gsba::gs://ejteknow_bucket_a/
:o:gsbt::gs://ejteknow_triggerbucket/
:o::wfcode::4739-3572-8047
:o:/eeb::eli.sundance.baker@gmail.com
:o:/eeb2::elisundance@hotmail.com
:o:/ejtb::gs://ejtbucket
;}}


;}} END OF MAIN TEXT REPLACEMENTS SECTION
			

;{{ ---   TEXT REPLACEMENT (ADVANCED)

:://s::
Sendraw §
return


::/kp::
send wmic process where name=".exe" call terminate 
sendinput {Left 20}
return
; --------------------------------------

::kpe::
send wmic process where name="everything.exe" call terminate 
;sendinput {Left 20}
return

::kpc::wmic process where name="chrome.exe" call terminate



::cmdr::
send psexec.exe \\office cmd.exe 
sendinput {Left 8}
return
;---------------------------------

::dirj::dir/ad/on | findstr "<JUNCTION>"


--------------
; VARIABLES FOR USE IN BATCH FILES

::setcd::set currdate=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%
::/currdate::set currdate=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%
::%cd::%currdate%




; ==========SEND DATE AND TIME==============
::/dt::
send {#}%A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%
return

::/t::
sendinput %A_Hour%:%A_Min%
return


::-dt::
send %A_YYYY%-%A_MM%-%A_DD%.%A_Hour%.%A_Min%.%A_Sec%
return

; ==============================================
; 
; -------- Ctrl+Alt+0 (zero)  inserts current DATE WITH HASHTAG   #YYYY-MM-DD -------------------
^!0::
send {#}%A_YYYY%-%A_MM%-%A_DD%  
return
;}}  --------------------------------

;::///j:: --=-+@{JSG}@+-=--"


;{{ @ejt   Launch Our s-to-t page, tab down to Start rec   
; 
;  TAGS:      @eli @voice @vr @gcloud @glo 
;   

;^+!e::    ;           ejt/S-to-T Hotkey (currently Ctl+Alt+Shift+E)

run "https://ejteknow.com/s-to-t/#note-textarea"    

; moved tab sequence to ahk-all-sandbox.txt  #20201017184123  
;  %Dropbox%\_JEFF\_AUTORUN\ahk-all-sandbox.txt
; %Dropbox%\_JEFF\_AUTORUN\ahk-all-sandbox.txt

return

;  END OF MACRO  @eli
;}} -------------------------------------



;{{ ------------- LAUNCH HOTKEYS --------------------check these-

;  

^!V:: run  C:\Program Files (x86)\cd wave\CDWav.exe, ,max , 
^!k:: run nircmd.exe speak text ~$clipboard$, ,max ,
^/:: run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe, ,max, 
^\:: run C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe, ,max, ; @surfacepro4 #2022-01-11 12:43
^!+w:: run  C:\Program Files (x86)\WordPerfect Office 12\Programs\wpwin12.exe, ,max , 

; ^!l:: run  G:\Forms-ELF\MISC\Letterhead-NEW OFFICE.wpd, ,max , 


;}} ----------------------------------------------
;



;{{ ================== ENABLES CTRL+V PASTING IN COMMAND PROMPT =================
#IfWinActive ahk_class ConsoleWindowClass
^V::
SendInput {Raw}%clipboard%
return
;}} ---

;{{ ==  popup window on top

IfWinExist, ahk_class #32770
 winset, AlwaysOnTop
return

;}} ================== 
					

Loop

;}}  END OF LOOPED ITEMS

{

Sleep, 300000

Reload

}



/*  SCRAPS
OnClipboardChange:
MsgBox, content1 of the clipboard: %clipboard%
MsgBox, content2 of the clipboard: %clipboard%
MsgBox, content3 of the clipboard: %clipboard%
MsgBox, content4 of the clipboard: %clipboard%
clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
^+R::RUN, explorer.exE %RECENT%,,,
run, explorer.exe %recent%,,,
*/ 


/* HIDE ME =-==-=-
rUN C:\Windows\system32\SnippingTool.exE" ,,,

	Sleep, 500
	WinActivate, "Snipping Tool"
	send, !n
	send, r
Return
*/ 


;20220129144734