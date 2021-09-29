Code for https://github.com/vlang/v/issues/12013

```sh
git clone https://github.com/ken0x0a/v_issue_thread_dup_definition
cd v_issue_thread_dup_definition
v run dup_def_thread_wait4.v # build error
v -no-parallel run dup_def_thread_wait4.v # success!!
```

