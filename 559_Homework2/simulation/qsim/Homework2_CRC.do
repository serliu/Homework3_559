onerror {exit -code 1}
vlib work
vlog -work work Homework2_CRC.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Homework2_CRC_b_vlg_vec_tst
vcd file -direction Homework2_CRC.msim.vcd
vcd add -internal Homework2_CRC_b_vlg_vec_tst/*
vcd add -internal Homework2_CRC_b_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

