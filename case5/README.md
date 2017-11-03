# Case 5

## ATC (Acceptance Test Criteria)
- Repeat #3, #4 with no ABI
- ABI is lazy created

## Command Run
```
eosc create account inita case5 EOS4toFS3YXEQCkuuw1aqDLrtHim86Gz9u3hBdcBw5KNPZcursVHq EOS7d9A3uLe6As66jzN8j44TXJUqJSK3bFjjEEqR4oTvNAB3iM9SA -s
eoscpp -o case5.wast case5.cpp
eosc set contract case5 case5.wast -s
eosc push message case5 foocase3 "{}" -S case5  -s
```

## Result
```
964822ms thread-0   main.cpp:1034                 operator()           ] Converting argument to binary...
{
  "transaction_id": "0810af574cbc42edccd5cf4787d7fc84427c5938a55020f985588b26d41e3690",
  "processed": {
    "refBlockNum": 10,
    "refBlockPrefix": 3094754006,
    "expiration": "2017-11-03T08:16:07",
    "scope": [
      "case3"
    ],
    "signatures": [],
    "messages": [{
        "code": "case3",
        "type": "foo",
        "authorization": [],
        "data": {},
        "hex_data": ""
      }
    ],
    "output": [{
        "notify": [],
        "deferred_transactions": []
      }
    ]
  }
}
```

## Command Run
```
eosc push message case5 foocase4 "{}" -S case5  -s
```


## Result
```
2621059ms thread-0   main.cpp:1101                 main                 ] Failed with error: 10 assert_exception: Assert Exception
status_code == 200: Error code 500
: {"code":500,"message":"Internal Service Error","details":"10 assert_exception: Assert Exception\nwasm_interface::i64i64i64 == table_key->second: abi definition for case5table expects \"i64\", but code is requesting \"i64i64i64\"\n    {\"table\":\"case5table\",\"type\":\"i64\"}\n    thread-0  wasm_interface.cpp:201 load_primary_i64i64i64i32i64i64i64i32i32\n\n    {\"name\":\"apply\",\"current_validate_context->msg.type\":\"foocase4\"}\n    thread-0  wasm_interface.cpp:702 vm_call\n\n    {}\n    thread-0  wasm_interface.cpp:768 apply\n\n    {\"context.msg\":{\"code\":\"case5\",\"type\":\"foocase4\",\"authorization\":[],\"data\":\"\"}}\n    thread-0  chain_controller.cpp:1034 apply_message\n\n    {\"trx\":{\"refBlockNum\":561,\"refBlockPrefix\":1558839976,\"expiration\":\"2017-11-03T08:43:40\",\"scope\":[\"case5\"],\"readscope\":[],\"messages\":[{\"code\":\"case5\",\"type\":\"foocase4\",\"authorization\":[],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:1072 process_transaction\n\n    {\"trx\":{\"refBlockNum\":561,\"refBlockPrefix\":1558839976,\"expiration\":\"2017-11-03T08:43:40\",\"scope\":[\"case5\"],\"readscope\":[],\"messages\":[{\"code\":\"case5\",\"type\":\"foocase4\",\"authorization\":[],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:1043 apply_transaction\n\n    {\"trx\":{\"refBlockNum\":561,\"refBlockPrefix\":1558839976,\"expiration\":\"2017-11-03T08:43:40\",\"scope\":[\"case5\"],\"readscope\":[],\"messages\":[{\"code\":\"case5\",\"type\":\"foocase4\",\"authorization\":[],\"data\":\"\"}],\"signatures\":[]}}\n    thread-0  chain_controller.cpp:244 push_transaction"}

    {"c":500,"msg":"{\"code\":500,\"message\":\"Internal Service Error\",\"details\":\"10 assert_exception: Assert Exception\\nwasm_interface::i64i64i64 == table_key->second: abi definition for case5table expects \\\"i64\\\", but code is requesting \\\"i64i64i64\\\"\\n    {\\\"table\\\":\\\"case5table\\\",\\\"type\\\":\\\"i64\\\"}\\n    thread-0  wasm_interface.cpp:201 load_primary_i64i64i64i32i64i64i64i32i32\\n\\n    {\\\"name\\\":\\\"apply\\\",\\\"current_validate_context->msg.type\\\":\\\"foocase4\\\"}\\n    thread-0  wasm_interface.cpp:702 vm_call\\n\\n    {}\\n    thread-0  wasm_interface.cpp:768 apply\\n\\n    {\\\"context.msg\\\":{\\\"code\\\":\\\"case5\\\",\\\"type\\\":\\\"foocase4\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}}\\n    thread-0  chain_controller.cpp:1034 apply_message\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":561,\\\"refBlockPrefix\\\":1558839976,\\\"expiration\\\":\\\"2017-11-03T08:43:40\\\",\\\"scope\\\":[\\\"case5\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case5\\\",\\\"type\\\":\\\"foocase4\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:1072 process_transaction\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":561,\\\"refBlockPrefix\\\":1558839976,\\\"expiration\\\":\\\"2017-11-03T08:43:40\\\",\\\"scope\\\":[\\\"case5\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case5\\\",\\\"type\\\":\\\"foocase4\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:1043 apply_transaction\\n\\n    {\\\"trx\\\":{\\\"refBlockNum\\\":561,\\\"refBlockPrefix\\\":1558839976,\\\"expiration\\\":\\\"2017-11-03T08:43:40\\\",\\\"scope\\\":[\\\"case5\\\"],\\\"readscope\\\":[],\\\"messages\\\":[{\\\"code\\\":\\\"case5\\\",\\\"type\\\":\\\"foocase4\\\",\\\"authorization\\\":[],\\\"data\\\":\\\"\\\"}],\\\"signatures\\\":[]}}\\n    thread-0  chain_controller.cpp:244 push_transaction\"}"}
    thread-0  httpc.cpp:113 call

    {"server":"localhost","port":8888,"path":"/v1/chain/push_transaction","postdata":{"refBlockNum":561,"refBlockPrefix":1558839976,"expiration":"2017-11-03T08:43:40","scope":["case5"],"readscope":[],"messages":[{"code":"case5","type":"foocase4","authorization":[],"data":""}],"signatures":[]}}
    thread-0  httpc.cpp:117 call
```

## Conclusion
Test Pass.
foocase3 should be succeed.
foocase4 should throw exception.
