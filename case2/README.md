# Case 2

## ATC (Acceptance Test Criteria)
- Attempt to use a table not in ABI
- Verify table access fails

## Command Run
```
eosc create account inita case2 EOS4toFS3YXEQCkuuw1aqDLrtHim86Gz9u3hBdcBw5KNPZcursVHq EOS7d9A3uLe6As66jzN8j44TXJUqJSK3bFjjEEqR4oTvNAB3iM9SA -s
eoscpp -o case2.wast case2.cpp
eosc set contract case2 case2.wast case2.abi -s
eosc push message case2 foo "{}" -S case2 -p case2@active -s
```


## Result
```
3163605ms thread-0   main.cpp:1101                 main                 ] Failed with error: 10 assert_exception: Assert Exception
status_code == 200: Error code 500
: {"code":500,"message":"Internal Service Error","details":"10 assert_exception: Assert Exception\n!wasm.tables_fixed: abi did not define table case2table\n    {\"t\":\"case2table\"}\n    thread-0  wasm_interface.cpp:193 store_i64i32i64i64i32i32\n\n    {\"name\":\"apply\",\"current_validate_context->msg.type\":\"foo\"}\n    thread-0  wasm_interface.cpp:702 vm_call\n\n    {}\n    thread-0  wasm_interface.cpp:768 apply\n\n    {\"context.msg\":{\"code\":\"case2\",\"type\":\"foo\",\"authorization\":[{\"account\":\"case2\",\"permission\":\"active\"}],\"data\":\"\"}}\n    thread-0  chain_controller.cpp:1034 apply_message\n\n    {\"trx\":{\"refBlockNum\":438,\"refBlockPrefix\":1034057322,\"expiration\":\"2017-11-03T03:52:43\",\"scope\":[\"case2\"],\"readscope\":[],\"messages\":[{\"code\":\"case2\",\"type\":\"foo\",\"authorization\":[{\"account\":\"case2\",\"permission\":\"active\"}],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:1072 process_transaction\n\n    {\"trx\":{\"refBlockNum\":438,\"refBlockPrefix\":1034057322,\"expiration\":\"2017-11-03T03:52:43\",\"scope\":[\"case2\"],\"readscope\":[],\"messages\":[{\"code\":\"case2\",\"type\":\"foo\",\"authorization\":[{\"account\":\"case2\",\"permission\":\"active\"}],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:1043 apply_transaction\n\n    {\"trx\":{\"refBlockNum\":438,\"refBlockPrefix\":1034057322,\"expiration\":\"2017-11-03T03:52:43\",\"scope\":[\"case2\"],\"readscope\":[],\"messages\":[{\"code\":\"case2\",\"type\":\"foo\",\"authorization\":[{\"account\":\"case2\",\"permission\":\"active\"}],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:244 push_transaction"}

    {"c":500,"msg":"{\"code\":500,\"message\":\"Internal Service Error\",\"details\":\"10 assert_exception: Assert Exception\\n!wasm.tables_fixed: abi did not define table case2table\\n    {\\\"t\\\":\\\"case2table\\\"}\\n    thread-0  wasm_interface.cpp:193 store_i64i32i64i64i32i32\\n\\n    {\\\"name\\\":\\\"apply\\\",\\\"current_validate_context->msg.type\\\":\\\"foo\\\"}\\n    thread-0  wasm_interface.cpp:702 vm_call\\n\\n    {}\\n    thread-0  wasm_interface.cpp:768 apply\\n\\n    {\\\"context.msg\\\":{\\\"code\\\":\\\"case2\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[{\\\"account\\\":\\\"case2\\\",\\\"permission\\\":\\\"active\\\"}],\\\"data\\\":\\\"\\\"}}\\n    thread-0  chain_controller.cpp:1034 apply_message\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":438,\\\"refBlockPrefix\\\":1034057322,\\\"expiration\\\":\\\"2017-11-03T03:52:43\\\",\\\"scope\\\":[\\\"case2\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case2\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[{\\\"account\\\":\\\"case2\\\",\\\"permission\\\":\\\"active\\\"}],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:1072 process_transaction\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":438,\\\"refBlockPrefix\\\":1034057322,\\\"expiration\\\":\\\"2017-11-03T03:52:43\\\",\\\"scope\\\":[\\\"case2\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case2\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[{\\\"account\\\":\\\"case2\\\",\\\"permission\\\":\\\"active\\\"}],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:1043 apply_transaction\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":438,\\\"refBlockPrefix\\\":1034057322,\\\"expiration\\\":\\\"2017-11-03T03:52:43\\\",\\\"scope\\\":[\\\"case2\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case2\\\",\\\"type\\\":\\\"foo\\\",\\\"authorization\\\":[{\\\"account\\\":\\\"case2\\\",\\\"permission\\\":\\\"active\\\"}],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:244 push_transaction\"}"}
    thread-0  httpc.cpp:113 call

    {"server":"localhost","port":8888,"path":"/v1/chain/push_transaction","postdata":{"refBlockNum":438,"refBlockPrefix":1034057322,"expiration":"2017-11-03T03:52:43","scope":["case2"],"readscope":[],"messages":[{"code":"case2","type":"foo","authorization":[{"account":"case2","permission":"active"}],"data":""}],"signatures":[]}}
    thread-0  httpc.cpp:117 call
```

## Conclusion
Test Pass.
Trying to store data on table is not in the abi results on the above error.

