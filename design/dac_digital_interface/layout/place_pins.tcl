
if { [info exists ::env(CONTEXTUAL_IO_FLAG_)] } {
	read_lef $::env(TMP_DIR)/top_level.lef
	#ppl::set_num_slots 2
}


if {[catch {read_lef $::env(MERGED_LEF)} errmsg]} {
    puts stderr $errmsg
    exit 1
}

if {[catch {read_def $::env(CURRENT_DEF)} errmsg]} {
    puts stderr $errmsg
	exit 1
}