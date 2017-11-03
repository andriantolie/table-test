# table-test

## ATC (Acceptance Test Criteria)

#1
- Create ABI with duplicate table names
- Verify ABI will not load

#2
- Attempt to use a table not in ABI
- Verify table access fails

#3
- Use a valid table that matches ABI
- Verify table access works

#4
- With a valid table in ABI
- Attempt to load with different key type (identify i64 key in ABI) and access with different type (use i64i64i64)
- Verify access fails

#5
- Repeat #3, #4 with no ABI
- ABI is lazy created

Details are inside the subfolder