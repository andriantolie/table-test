# Case 2

## ATC (Acceptance Test Criteria)
- Use a valid table that matches ABI
- Verify table access works

## Command Run
```
eosc create account inita case3 EOS4toFS3YXEQCkuuw1aqDLrtHim86Gz9u3hBdcBw5KNPZcursVHq EOS7d9A3uLe6As66jzN8j44TXJUqJSK3bFjjEEqR4oTvNAB3iM9SA -s
eoscpp -o case3.wast case3.cpp
eosc set contract case3 case3.wast case3.abi -s
eosc push message case3 foo "{}" -S case3  -s
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

## Conclusion
Test Pass.

