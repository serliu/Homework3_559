create_clock -name clock -period 10.000 -waveform {0 5} [get_ports {clock}]
derive_clock_uncertainty