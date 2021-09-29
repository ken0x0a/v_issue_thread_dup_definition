module dup_def_thread_wait

struct SA {
mut:
	threads []thread
}
pub fn (self SA) wait() {
	self.threads.wait()
}
fn new_sa() SA {
	mut inst := SA{
		threads: []thread{}
	}
	inst.threads << go (&inst).run()
	return inst
}
pub fn (mut self SA) run() {}
