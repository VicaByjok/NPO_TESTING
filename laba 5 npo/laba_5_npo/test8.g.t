﻿[ ] 
[+] // *** DATA DRIVEN ASSISTANT Section (!! DO NOT REMOVE !!) ***
	[ ] use "datadrivetc.inc"
	[ ] use "test8.t"
	[ ] 
	[ ] // *** DSN ***
	[ ] STRING gsDSNConnect = "DSN=Silk DDA Excel;DBQ=C:\Users\laptop\Desktop\laba 5 npo\Excel_1.xls;UID=;PWD=;"
	[ ] 
	[ ] // *** Global record for each testcase ***
	[ ] 
	[-] type REC_DATALIST_DD_Test8 is record
		[ ] REC_Лист1_ recЛист1_  //Лист1$, 
	[ ] 
	[ ] // *** Global record for each Table ***
	[ ] 
	[-] type REC_Лист1_ is record
		[ ] INTEGER x  //x, 
		[ ] INTEGER y  //y, 
		[ ] STRING text  //text, 
	[ ] 
	[ ] // *** Global record containing sample data for each table ***
	[ ] // *** Used when running a testcase with 'Use Sample Data from Script' checked ***
	[ ] 
	[-] REC_Лист1_ grTest_Лист1_ = {...}
		[ ] 469 // x
		[ ] 135 // y
		[ ] "1234567890" // text
	[ ] 
	[ ] // *** End of DATA DRIVEN ASSISTANT Section ***
	[ ] 
[-] testcase DD_Test8 (REC_DATALIST_DD_Test8 rData)
	[-] recording
		[ ] РисованиеFastStone.SetActive()
		[ ] РисованиеFastStone.Click(MB_LEFT, 24, 147)
		[ ] РисованиеFastStone.TImageEnVect.Click(MB_LEFT, rData.recЛист1_.x, rData.recЛист1_.y)
		[ ] РисованиеFastStone.TIETextControl.TypeKeys(rData.recЛист1_.text)
