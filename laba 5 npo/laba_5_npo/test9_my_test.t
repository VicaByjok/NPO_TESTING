﻿[-] testcase my_test ()
	[-] //recording
		[ ] integer i
		[ ] integer y = 24
		[ ] ARRAY[3] OF STRING pic
		[ ] pic[1] = "x1.bmp"
		[ ] pic[2] = "x2.bmp"
		[ ] pic[3] = "x3.bmp"
		[ ] FastStoneCapture.TBXToolbar2.Click(MB_LEFT, 15, 16)
		[ ] FastStoneCapture.TTBXPopupWindow.TextClick("Новый")
		[ ] НовоеИзображение.SetActive()
		[ ] НовоеИзображение.ОК.Click(MB_LEFT, 25, 19)
		[ ] Снимок1РедакторFastStone.SetActive()
		[ ] Снимок1РедакторFastStone.TTBXToolbar.Click(MB_LEFT, 510, 17)
		[-] for (i=1;i<4;i++)
			[ ] РисованиеFastStone.Click(MB_LEFT, 24, 362)
			[ ] РисованиеFastStone.Открыть.ListView.Select(pic[i])
			[ ] РисованиеFastStone.Открыть.Открыть.Click()
			[ ] РисованиеFastStone.TImageEnVect.Click(MB_LEFT, 258, y)
			[ ] y = y+200
			[ ] РисованиеFastStone.SetActive()
		[ ] РисованиеFastStone.ОК.Click(MB_LEFT, 20, 12)
		[ ] Снимок1РедакторFastStone.TTBXToolbar.Click(MB_LEFT, 110, 11)
		[ ] //sleep(1)
		[ ] Снимок1РедакторFastStone.СохранитьКак.ListView.DoubleSelect("laba_5_npo_1")
		[ ] Снимок1РедакторFastStone.СохранитьКак.Сохранить.Click()
