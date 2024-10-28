onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider entradas
add wave -noupdate -radix hexadecimal /tb/DUT/A
add wave -noupdate -radix hexadecimal /tb/DUT/B
add wave -noupdate /tb/DUT/mode
add wave -noupdate -radix hexadecimal /tb/DUT/D
add wave -noupdate -divider saidas
add wave -noupdate -radix hexadecimal /tb/DUT/S
add wave -noupdate /tb/DUT/cout
add wave -noupdate /tb/DUT/ov
add wave -noupdate -divider {sinais internos}
add wave -noupdate -radix hexadecimal /tb/DUT/BB
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {2041 ns}
