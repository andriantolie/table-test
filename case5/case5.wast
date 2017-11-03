(module
 (type $FUNCSIG$ijjii (func (param i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijji (func (param i64 i64 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (import "env" "assert" (func $assert (param i32 i32)))
 (import "env" "back_i64" (func $back_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "front_i64" (func $front_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "load_i64" (func $load_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "load_primary_i64i64i64" (func $load_primary_i64i64i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "remove_i64" (func $remove_i64 (param i64 i64 i32) (result i32)))
 (import "env" "store_i64" (func $store_i64 (param i64 i64 i32 i32) (result i32)))
 (import "env" "update_i64" (func $update_i64 (param i64 i64 i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 4) "\a0B\00\00")
 (data (i32.const 16) "case5\00")
 (data (i32.const 32) "Store Record 1 Fails\00")
 (data (i32.const 64) "Store Record 2 Fails\00")
 (data (i32.const 96) "Store Record 3 Fails\00")
 (data (i32.const 128) "Store Record 4 Fails\00")
 (data (i32.const 160) "Store Record 5 Fails\00")
 (data (i32.const 192) "Get Front Record Fails\00")
 (data (i32.const 224) "Front Record is Invalid\00")
 (data (i32.const 256) "Get Back Record Fails\00")
 (data (i32.const 288) "Back Record is Invalid\00")
 (data (i32.const 320) "Get Middle Record Fails\00")
 (data (i32.const 352) "Middle Record is Invalid\00")
 (data (i32.const 384) "Update Fails\00")
 (data (i32.const 400) "Get Updated Record Fails\00")
 (data (i32.const 432) "Updated Record is Invalid\00")
 (data (i32.const 464) "RemoveRecord Fails\00")
 (data (i32.const 496) "Get Removed Record Fails\00")
 (data (i32.const 528) "Store Record Fails\00")
 (data (i32.const 560) "case5table\00")
 (data (i32.const 576) "Init World!\n\00")
 (data (i32.const 592) "Hello World: \00")
 (data (i32.const 608) "->\00")
 (data (i32.const 624) "\n\00")
 (data (i32.const 640) "foocase3\00")
 (data (i32.const 656) "foocase4\00")
 (export "memory" (memory $0))
 (export "apply_foocase3" (func $apply_foocase3))
 (export "apply_foocase4" (func $apply_foocase4))
 (export "init" (func $init))
 (export "apply" (func $apply))
 (func $apply_foocase3
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 192)
    )
   )
  )
  (i64.store offset=184
   (get_local $6)
   (i64.const 100)
  )
  (i64.store offset=176
   (get_local $6)
   (i64.const 1)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $store_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 176)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 32)
  )
  (i64.store offset=168
   (get_local $6)
   (i64.const 200)
  )
  (i64.store offset=160
   (get_local $6)
   (i64.const 3)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$10
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$9)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$8
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$7)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$6
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $store_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 160)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 64)
  )
  (i64.store offset=152
   (get_local $6)
   (i64.const 300)
  )
  (i64.store offset=144
   (get_local $6)
   (i64.const 5)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$12
   (block $label$13
    (block $label$14
     (block $label$15
      (block $label$16
       (block $label$17
        (br_if $label$17
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$16
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$15)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$14
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$13)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$12
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $store_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 144)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 96)
  )
  (i64.store offset=136
   (get_local $6)
   (i64.const 400)
  )
  (i64.store offset=128
   (get_local $6)
   (i64.const 7)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$18
   (block $label$19
    (block $label$20
     (block $label$21
      (block $label$22
       (block $label$23
        (br_if $label$23
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$22
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$21)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$20
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$19)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$18
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $store_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 128)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 128)
  )
  (i64.store offset=120
   (get_local $6)
   (i64.const 500)
  )
  (i64.store offset=112
   (get_local $6)
   (i64.const 9)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$24
   (block $label$25
    (block $label$26
     (block $label$27
      (block $label$28
       (block $label$29
        (br_if $label$29
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$28
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$27)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$26
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$25)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$24
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $store_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 112)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 160)
  )
  (call $assert
   (i32.eq
    (call $front_i64
     (i64.const 4733461879005904896)
     (i64.const 4733461879005904896)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 96)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.const 192)
  )
  (call $assert
   (i64.eq
    (i64.load offset=104
     (get_local $6)
    )
    (i64.const 100)
   )
   (i32.const 224)
  )
  (call $assert
   (i32.eq
    (call $back_i64
     (i64.const 4733461879005904896)
     (i64.const 4733461879005904896)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 80)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.const 256)
  )
  (call $assert
   (i64.eq
    (i64.load offset=88
     (get_local $6)
    )
    (i64.const 500)
   )
   (i32.const 288)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$30
   (block $label$31
    (block $label$32
     (block $label$33
      (block $label$34
       (block $label$35
        (br_if $label$35
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$34
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$33)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$32
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$31)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$30
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=64
   (get_local $6)
   (i64.const 5)
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (get_local $4)
     (i64.const 4733461879005904896)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 64)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.const 320)
  )
  (call $assert
   (i64.eq
    (i64.load offset=72
     (get_local $6)
    )
    (i64.const 300)
   )
   (i32.const 352)
  )
  (i64.store offset=56
   (get_local $6)
   (i64.const 1000)
  )
  (i64.store offset=48
   (get_local $6)
   (i64.const 1)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$36
   (block $label$37
    (block $label$38
     (block $label$39
      (block $label$40
       (block $label$41
        (br_if $label$41
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$40
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$39)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$38
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$37)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$36
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $update_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 48)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 384)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$42
   (block $label$43
    (block $label$44
     (block $label$45
      (block $label$46
       (block $label$47
        (br_if $label$47
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$46
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$45)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$44
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$43)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$42
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=32
   (get_local $6)
   (i64.const 1)
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (get_local $4)
     (i64.const 4733461879005904896)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 32)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.const 400)
  )
  (call $assert
   (i64.eq
    (i64.load offset=40
     (get_local $6)
    )
    (i64.const 1000)
   )
   (i32.const 432)
  )
  (i64.store offset=16
   (get_local $6)
   (i64.const 5)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$48
   (block $label$49
    (block $label$50
     (block $label$51
      (block $label$52
       (block $label$53
        (br_if $label$53
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$52
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$51)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$50
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$49)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$48
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $remove_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
    )
    (i32.const 0)
   )
   (i32.const 464)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$54
   (block $label$55
    (block $label$56
     (block $label$57
      (block $label$58
       (block $label$59
        (br_if $label$59
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$58
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$57)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$56
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$55)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$54
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store
   (get_local $6)
   (i64.const 5)
  )
  (call $assert
   (i32.ne
    (call $load_i64
     (get_local $4)
     (i64.const 4733461879005904896)
     (i64.const 4733462311850377216)
     (get_local $6)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.const 496)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 192)
   )
  )
 )
 (func $apply_foocase4
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const 600)
  )
  (i64.store offset=16
   (get_local $8)
   (i64.const 11)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i32.ne
    (call $store_i64
     (get_local $4)
     (i64.const 4733462311850377216)
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.const 528)
  )
  (i64.store
   (get_local $8)
   (i64.const 1)
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$10
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$9)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$8
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$7)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$6
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$12
   (block $label$13
    (block $label$14
     (block $label$15
      (block $label$16
       (block $label$17
        (br_if $label$17
         (i64.gt_u
          (get_local $3)
          (i64.const 4)
         )
        )
        (br_if $label$16
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$15)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$14
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$13)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $5)
     (get_local $6)
    )
   )
   (br_if $label$12
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 560)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$18
   (block $label$19
    (block $label$20
     (block $label$21
      (block $label$22
       (block $label$23
        (br_if $label$23
         (i64.gt_u
          (get_local $3)
          (i64.const 9)
         )
        )
        (br_if $label$22
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$21)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$20
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$19)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $5)
     (get_local $7)
    )
   )
   (br_if $label$18
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (drop
   (call $load_primary_i64i64i64
    (get_local $4)
    (get_local $6)
    (get_local $7)
    (get_local $8)
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
 (func $init
  (call $prints
   (i32.const 576)
  )
 )
 (func $apply (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (call $prints
   (i32.const 592)
  )
  (call $printn
   (get_local $0)
  )
  (call $prints
   (i32.const 608)
  )
  (call $printn
   (get_local $1)
  )
  (call $prints
   (i32.const 624)
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 16)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 4)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $0)
    )
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 640)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $5)
           (i64.const 7)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $2
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (block $label$13
    (br_if $label$13
     (i64.ne
      (get_local $6)
      (get_local $1)
     )
    )
    (call $apply_foocase3)
    (return)
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 656)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$14
    (block $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (br_if $label$19
          (i64.gt_u
           (get_local $5)
           (i64.const 7)
          )
         )
         (br_if $label$18
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $2
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 165)
          )
         )
         (br $label$17)
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$16
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$15)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$14
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $1)
    )
   )
   (call $apply_foocase4)
  )
 )
)
