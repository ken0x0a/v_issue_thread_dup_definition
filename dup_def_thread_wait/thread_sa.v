module dup_def_thread_wait

struct SA {
mut:
	threads []thread
}

fn new_sa() SA {
	mut inst := SA{
		threads: []thread{}
	}
	inst.threads << go (&inst).run()
	return inst
}

pub fn (self SA) wait() {
	self.threads.wait()
}

pub fn (mut self SA) run() {}
