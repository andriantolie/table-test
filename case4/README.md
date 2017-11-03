# Case 4

## ATC (Acceptance Test Criteria)
- With a valid table in ABI
- Attempt to load with different key type (identify i64 key in ABI) and access with different type (use i64i64i64)
- Verify access fails

## Command Run
```
eosc create account inita case4 EOS4toFS3YXEQCkuuw1aqDLrtHim86Gz9u3hBdcBw5KNPZcursVHq EOS7d9A3uLe6As66jzN8j44TXJUqJSK3bFjjEEqR4oTvNAB3iM9SA -s
eoscpp -o case4.wast case4.cpp
eosc set contract case4 case4.wast case4.abi -s
eosc push message case4 foo "{}" -S case4  -s
```


## Result
```
2182504ms thread-0   main.cpp:1101                 main                 ] Failed with error: 10 assert_exception: Assert Exception
status_code == 200: Error code 500
: {"code":500,"message":"Internal Service Error","details":"10 assert_exception: Assert Exception\nwasm_interface::i64i64i64 == table_key->second: abi definition for case4table expects \"i64\", but code is requesting \"i64i64i64\"\n    {\"table\":\"case4table\",\"type\":\"i64\"}\n    thread-0  wasm_interface.cpp:201 load_primary_i64i64i64i32i64i64i64i32i32\n\n    {\"name\":\"apply\",\"current_validate_context->msg.type\":\"foo\"}\n    thread-0  wasm_interface.cpp:702 vm_call\n\n    {}\n    thread-0  wasm_interface.cpp:768 apply\n\n    {\"context.msg\":{\"code\":\"case4\",\"type\":\"foo\",\"authorization\":[],\"data\":\"\"}}\n    thread-0  chain_controller.cpp:1034 apply_message\n\n    {\"trx\":{\"refBlockNum\":415,\"refBlockPrefix\":1624351839,\"expiration\":\"2017-11-03T08:36:22\",\"scope\":[\"case4\"],\"readscope\":[],\"messages\":[{\"code\":\"case4\",\"type\":\"foo\",\"authorization\":[],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:1072 process_transaction\n\n    {\"trx\":{\"refBlockNum\":415,\"refBlockPrefix\":1624351839,\"expiration\":\"2017-11-03T08:36:22\",\"scope\":[\"case4\"],\"readscope\":[],\"messages\":[{\"code\":\"case4\",\"type\":\"foo\",\"authorization\":[],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:1043 apply_transaction\n\n    {\"trx\":{\"refBlockNum\":415,\"refBlockPrefix\":1624351839,\"expiration\":\"2017-11-03T08:36:22\",\"scope\":[\"case4\"],\"readscope\":[],\"messages\":[{\"code\":\"case4\",\"type\":\"foo\",\"authorization\":[],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:244 push_transaction"}

    {"c":500,"msg":"{\"code\":500,\"message\":\"Internal Service Error\",\"details\":\"10 assert_exception: Assert Exception\\nwasm_interface::i64i64i64 == table_key->second: abi definition for case4table expects \\\"i64\\\", but code is requesting \\\"i64i64i64\\\"\\n    {\\\"table\\\":\\\"case4table\\\",\\\"type\\\":\\\"i64\\\"}\\n    thread-0  wasm_interface.cpp:201 load_primary_i64i64i64i32i64i64i64i32i32\\n\\n    {\\\"name\\\":\\\"apply\\\",\\\"current_validate_context->msg.type\\\":\\\"foo\\\"}\\n    thread-0  wasm_interface.cpp:702 vm_call\\n\\n    {}\\n    thread-0  wasm_interface.cpp:768 apply\\n\\n    {\\\"context.msg\\\":{\\\"code\\\":\\\"case4\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}}\\n    thread-0  chain_controller.cpp:1034 apply_message\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":415,\\\"refBlockPrefix\\\":1624351839,\\\"expiration\\\":\\\"2017-11-03T08:36:22\\\",\\\"scope\\\":[\\\"case4\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case4\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:1072 process_transaction\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":415,\\\"refBlockPrefix\\\":1624351839,\\\"expiration\\\":\\\"2017-11-03T08:36:22\\\",\\\"scope\\\":[\\\"case4\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case4\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:1043 apply_transaction\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":415,\\\"refBlockPrefix\\\":1624351839,\\\"expiration\\\":\\\"2017-11-03T08:36:22\\\",\\\"scope\\\":[\\\"case4\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case4\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:244 push_transaction\"}"}
    thread-0  httpc.cpp:113 call

    {"server":"localhost","port":8888,"path":"/v1/chain/push_transaction","postdata":{"refBlockNum":415,"refBlockPrefix":1624351839,"expiration":"2017-11-03T08:36:22","scope":["case4"],"readscope":[],"messages":[{"code":"case4","type":"foo","authorization":[],"data":""}],"signatures":[]}}
    thread-0  httpc.cpp:117 call
```

## Conclusion
Test Pass.
Key i64i64i64 is used to retrieve table with key i64.

