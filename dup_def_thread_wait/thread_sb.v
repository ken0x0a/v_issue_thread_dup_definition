module dup_def_thread_wait

struct SB {
mut:
	threads []thread
}

fn new_sb() SB {
	mut inst := SB{
		threads: []thread{}
	}
	inst.threads << go (&inst).run()
	return inst
}

pub fn (self SB) wait() {
	self.threads.wait()
}

pub fn (mut self SB) run() {}
