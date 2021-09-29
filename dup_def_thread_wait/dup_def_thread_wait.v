module dup_def_thread_wait

pub struct SC {
mut:
	threads []thread ?
pub mut:
	sa SA
	sb SB
}
pub fn new_sc() SC {
	mut inst := SC{
		threads: []thread ?{}
		sa: new_sa()
		sb: new_sb()
	}
	inst.threads << go fn () ? {}()
	return inst
}
pub fn (self SC) wait() {
	for th in self.threads {
		th.wait() or {
			panic(err)
		}
	}
	self.sa.wait()
	self.sb.wait()
}

