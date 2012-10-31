BEGIN{
	kanji[1] = "一";
	kanji[2] = "二";
	kanji[3] = "三";
	kanji[4] = "四";
	kanji[5] = "五";
	kanji[6] = "六";
	kanji[7] = "七";
	kanji[8] = "八";
	kanji[9] = "九";
	kanji[1000] = "千"
	alpha[0] = "ぜっと";
	alpha[1] = "えー";
	alpha[2] = "びー";
	alpha[3] = "しー";
	alpha[4] = "でー";
	alpha[5] = "いー";
	alpha[6] = "えふ";
	alpha[7] = "じー";
	alpha[8] = "えいち";
	alpha[9] = "あい";
	alpha[10] = "じぇい";
	alpha[11] = "けー";
	alpha[12] = "える";
	alpha[13] = "えむ";
	alpha[14] = "えぬ";
	alpha[15] = "おー";
	alpha[16] = "ぴー";
	alpha[17] = "きゅー";
	alpha[18] = "あーる";
	alpha[19] = "えす";
	alpha[20] = "てぃー";
	alpha[21] = "ゆー";
	alpha[22] = "ぶい";
	alpha[23] = "だぶる";
	alpha[24] = "えっきす";
	alpha[25] = "わい";

	for(i = 1; i <= 1000; i++){
		if(i >= 1000) printf kanji[1000];
		if( ( (i/100) % 10) >= 2){
			printf kanji[substr(i"", length(i)-2, 1)];
#			printf substr(i"", length(i)-2, 1);
		}
		if( ( (i/100) % 10) >= 1){
			printf "百";
		}
		if( ( (i/10) % 10) >= 2){
			printf kanji[substr(i"", length(i)-1, 1)];
#			printf substr(i"", length(i)-1, 1);
		}
		if( ( (i/10) % 10) >= 1){
			printf "十";
		}
		printf kanji[substr(i"", length(i), 1)];
#		printf substr(i"", length(i), 1);
		print "反田" alpha[i % 26];
	}	
}
