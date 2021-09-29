import dup_def_thread_wait {new_sc}
fn main() {
	mut sc := new_sc()

	sc.wait()
}

