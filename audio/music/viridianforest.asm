Music_Dungeon2:
	musicheader 4, 1, Music_Dungeon2_Ch1
	musicheader 1, 2, Music_Dungeon2_Ch2
	musicheader 1, 3, Music_Dungeon2_Ch3
	musicheader 1, 4, Music_Dungeon2_Ch4

;Viridian Forest Remastered
Music_Dungeon2_Ch1: ; 7e887 (1f:6887)
	tempo 144
	volume $77
	tone $0002
	dutycycle 1
	vibrato 10, 20
	stereopanning $f0
Music_Dungeon2_branch_7e892:
	notetype 12, $b2
	octave 4
	pitchoffset 0, E_
	callchannel Music_Dungeon2_C
	pitchoffset 0, A#
	callchannel Music_Dungeon2_C
	pitchoffset 0, E_
	callchannel Music_Dungeon2_C
	octave 5
	pitchoffset 0, C#
	callchannel Music_Dungeon2_C
	octave 3
	pitchoffset 0, E_
	callchannel Music_Dungeon2_C
	pitchoffset 0, A#
	callchannel Music_Dungeon2_C
	pitchoffset 0, C_
	octave 2
	note G_, 2
	note A#, 4
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A#, 2
	note B_, 2
	note G_, 2
	octave 3
	note C#, 4
	octave 2
	note G_, 2
	note A_, 4
	note F#, 2
	loopchannel 2, Music_Dungeon2_branch_7e892
	intensity $1f
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note A#, 16
	callchannel Music_Dungeon2_Silence
	callchannel Music_Dungeon2_Silence
	loopchannel 0, Music_Dungeon2_branch_7e892

Music_Dungeon2_Ch2: ; 7e8d8 (1f:68d8)
	vibrato 11, 21
	tone $0001
	stereopanning $f
Music_Dungeon2_branch_7e8db:
	dutycycle 3
	notetype 12, $c2
	octave 3
	pitchoffset 0, E_
	callchannel Music_Dungeon2_C
	pitchoffset 0, C_
	callchannel Music_Dungeon2_C
	pitchoffset 0, E_
	callchannel Music_Dungeon2_C
	pitchoffset 0, C_
	callchannel Music_Dungeon2_C
	pitchoffset 0, B_
	callchannel Music_Dungeon2_C
	octave 4
	pitchoffset 0, F#
	callchannel Music_Dungeon2_C
	pitchoffset 0, D_
	callchannel Music_Dungeon2_C
	pitchoffset 0, C_
	note G_, 4
	note G_, 4
	note G_, 4
	note F#, 4
	loopchannel 2, Music_Dungeon2_branch_7e8db
	octave 3
	note E_, 2
	note G_, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note E_, 2
	octave 5
	note E_, 2
	note __, 2
	note D#, 2
	note __, 2
	note D_, 2
	note __, 2
	note C#, 2
	note C_, 2
	octave 4
	note E_, 2
	note G_, 2
	octave 3
	note A#, 2
	note C#, 2
	note A#, 2
	note A_, 2
	note A#, 2
	note G_, 2
	octave 5
	note G_, 2
	note __, 2
	note F#, 2
	note __, 2
	note F_, 2
	note __, 2
	note E_, 2
	note D#, 2
	note D_, 2
	note C#, 2
	callchannel Music_Dungeon2_Silence
	intensity $b7
	stereopanning $ff
	octave 4
	note E_, 16
	note D_, 16
	note C_, 16
	note D_, 16
	stereopanning $f
	loopchannel 0, Music_Dungeon2_branch_7e8db

Music_Dungeon2_C:
	note C_, 4
	note C_, 4
	note C_, 4
	note C_, 4
	endchannel

Music_Dungeon2_Ch3: ; 7e93b (1f:693b)
	notetype 12, 19
	vibrato 8, 38
	stereopanning $ff
Music_Dungeon2_branch_7e940:
	callchannel Music_Dungeon2_branch_7e9d1
	loopchannel 16, Music_Dungeon2_branch_7e940
	note E_, 4
	note __, 8
	note E_, 4
	note C_, 4
	note __, 8
	note C_, 4
	note D_, 4
	note __, 8
	note D_, 4
	octave 3
	note A#, 4
	note __, 8
	note A#, 4
Music_Dungeon2_branch_7e958:
	octave 5
	pitchoffset 0, E_
	callchannel Music_Dungeon2_Ch3_Left

	pitchoffset 0, B_
	callchannel Music_Dungeon2_Ch3_Right

	pitchoffset 0, A#
	callchannel Music_Dungeon2_Ch3_Left

	octave 6
	pitchoffset 0, D_
	callchannel Music_Dungeon2_Ch3_Right

	pitchoffset 0, C#
	callchannel Music_Dungeon2_Ch3_Left

	octave 5
	pitchoffset 0, G#
	callchannel Music_Dungeon2_Ch3_Left

	pitchoffset 0, G_
	callchannel Music_Dungeon2_Ch3_Right

	pitchoffset 0, B_
	callchannel Music_Dungeon2_Ch3_Left

	pitchoffset 0, A#
	callchannel Music_Dungeon2_Ch3_Right

	pitchoffset 0, E_
	callchannel Music_Dungeon2_Ch3_Left
	
	pitchoffset 0, D#
	callchannel Music_Dungeon2_Ch3_Right
	
	pitchoffset 0, A_
	callchannel Music_Dungeon2_Ch3_Left
	
	pitchoffset 0, G#
	callchannel Music_Dungeon2_Ch3_Right
	
	pitchoffset 0, E_
	callchannel Music_Dungeon2_Ch3_Left
	
	pitchoffset 0, F#
	callchannel Music_Dungeon2_Ch3_Right
	
	pitchoffset 0, D#
	callchannel Music_Dungeon2_Ch3_Left
	
	loopchannel 3, Music_Dungeon2_branch_7e958
	pitchoffset 0, C_
	octave 4
	note E_, 4
	note B_, 4
	note A#, 4
	octave 5
	note D_, 4
	note C#, 4
	octave 4
	note G#, 4
	note G_, 4
	note B_, 4
	note A#, 4
	note E_, 4
	note D#, 4
	note A_, 4
	note G#, 4
	note E_, 4
	note F#, 4
	note D#, 4
	octave 3
	note E_, 16
	note C_, 16
	note D_, 16
	octave 2
	note A#, 16
	octave 3
	note E_, 16
	note F_, 16
	note G_, 16
	octave 3
	note B_, 16
	callchannel Music_Dungeon2_Silence
Music_Dungeon2_Ch3_end:
	callchannel Music_Dungeon2_branch_7e9d1
	loopchannel 8, Music_Dungeon2_Ch3_end

	loopchannel 0, Music_Dungeon2_branch_7e940

Music_Dungeon2_Ch3_Left:
	note C_, 2
	stereopanning $f0
	intensity $33
	note C_, 2
	intensity $13
	stereopanning $ff
	endchannel

Music_Dungeon2_Ch3_Right:
	note C_, 2
	stereopanning $f
	intensity $33
	note C_, 2
	intensity $13
	stereopanning $ff
	endchannel

Music_Dungeon2_branch_7e9d1:
	octave 4
	note E_, 2
	note __, 4
	octave 3
	note E_, 1
	note __, 3
	note E_, 1
	note __, 1
	octave 4
	note F#, 4
	endchannel

Music_Dungeon2_Silence:
	note __, 16
	loopchannel 4, Music_Dungeon2_Silence
	endchannel

Music_Dungeon2_Ch4: ; 7e9dc (1f:69dc)
	notetype 12
	togglenoise $1
	stereopanning $ff
Music_Dungeon2_branch_7e9dd:
	note E_, 4
	note F_, 4
	note E_, 4
	note D_, 4
	note E_, 4
	note F_, 4
	note D#, 4
	note C#, 4
	loopchannel 0, Music_Dungeon2_branch_7e9dd
