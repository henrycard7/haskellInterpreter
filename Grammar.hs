{-# OPTIONS_GHC -w #-}
module Grammar where 
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,182) ([16384,5120,57596,29,0,4096,0,0,0,8208,0,0,1,0,0,4,0,4096,1280,30783,7,8,0,0,256,61520,30595,32768,0,0,0,32,0,0,0,0,96,0,20481,33776,119,64,64532,7648,4096,1280,30783,7,16388,4033,478,0,0,96,0,512,0,0,0,0,256,2048,0,0,0,16384,0,0,0,0,0,4096,1280,30783,7,16388,4033,478,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20481,33777,119,0,0,0,0,0,32832,0,0,0,0,0,0,0,16384,5120,57596,29,16,16133,1912,0,0,0,0,32768,2,0,0,0,0,0,32768,0,0,0,0,0,0,288,0,32768,0,0,0,16,16133,1912,1024,49472,56847,1,0,0,0,0,0,0,4096,5376,30783,7,0,4,0,0,2048,0,0,0,0,0,32,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,32768,2,0,128,0,513,4096,1280,30783,7,0,0,0,0,0,0,32768,0,0,0,0,0,0,0,128,0,0,0,0,0,0,8,0,0,12,0,0,240,16,0,0,7,0,0,0,0,0,0,0,0,0,64,0,0,2,1024,8,0,0,513,0,0,32832,0,0,4096,32,512,0,2052,32768,0,256,2,32,16384,128,2048,0,8208,0,2,1024,8,128,0,513,8192,0,32832,0,8192,0,0,512,0,0,16384,5120,57596,29,16,16133,1912,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,128,0,0,0,4,0,0,0,0,16384,5120,57596,29,0,16,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","BooleanExp2","BooleanExp1","BooleanExp","SubBooleanExp","ReflectArg","ReplicateArg","Axis","Rows","Row2","Elements","Subtile","digit","'<='","'>='","'<'","'>'","'&&'","'||'","'+'","'-'","'*'","'='","'('","')'","'['","']'","';'","':'","'=='","','","Return","Rotate","Scale","Replicate","Add","Reverse","Column","Relative","Absolute","Horizontal","Vertical","And","Negate","Blank","Reflect","Row","var","Arg","ReplicateIf","%eof"]
        bit_start = st Prelude.* 54
        bit_end = (st Prelude.+ 1) Prelude.* 54
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..53]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (15) = happyShift action_4
action_0 (27) = happyShift action_5
action_0 (29) = happyShift action_6
action_0 (35) = happyShift action_7
action_0 (36) = happyShift action_8
action_0 (37) = happyShift action_9
action_0 (38) = happyShift action_10
action_0 (39) = happyShift action_2
action_0 (40) = happyShift action_11
action_0 (46) = happyShift action_12
action_0 (47) = happyShift action_13
action_0 (48) = happyShift action_14
action_0 (49) = happyShift action_15
action_0 (51) = happyShift action_16
action_0 (52) = happyShift action_17
action_0 (53) = happyShift action_18
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (39) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (41) = happyShift action_43
action_2 (50) = happyShift action_44
action_2 (11) = happyGoto action_42
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (31) = happyShift action_41
action_3 (54) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (27) = happyShift action_40
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (15) = happyShift action_4
action_5 (27) = happyShift action_5
action_5 (29) = happyShift action_6
action_5 (35) = happyShift action_7
action_5 (36) = happyShift action_8
action_5 (37) = happyShift action_9
action_5 (38) = happyShift action_10
action_5 (39) = happyShift action_2
action_5 (40) = happyShift action_11
action_5 (46) = happyShift action_12
action_5 (47) = happyShift action_13
action_5 (48) = happyShift action_14
action_5 (49) = happyShift action_15
action_5 (51) = happyShift action_16
action_5 (52) = happyShift action_17
action_5 (53) = happyShift action_18
action_5 (4) = happyGoto action_39
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (16) = happyShift action_38
action_6 (12) = happyGoto action_35
action_6 (13) = happyGoto action_36
action_6 (14) = happyGoto action_37
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (15) = happyShift action_4
action_7 (27) = happyShift action_5
action_7 (29) = happyShift action_6
action_7 (35) = happyShift action_7
action_7 (36) = happyShift action_8
action_7 (37) = happyShift action_9
action_7 (38) = happyShift action_10
action_7 (39) = happyShift action_2
action_7 (40) = happyShift action_11
action_7 (46) = happyShift action_12
action_7 (47) = happyShift action_13
action_7 (48) = happyShift action_14
action_7 (49) = happyShift action_15
action_7 (51) = happyShift action_16
action_7 (52) = happyShift action_17
action_7 (53) = happyShift action_18
action_7 (4) = happyGoto action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (16) = happyShift action_33
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (16) = happyShift action_32
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (42) = happyShift action_30
action_10 (43) = happyShift action_31
action_10 (10) = happyGoto action_29
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (15) = happyShift action_4
action_11 (27) = happyShift action_5
action_11 (29) = happyShift action_6
action_11 (35) = happyShift action_7
action_11 (36) = happyShift action_8
action_11 (37) = happyShift action_9
action_11 (38) = happyShift action_10
action_11 (39) = happyShift action_2
action_11 (40) = happyShift action_11
action_11 (46) = happyShift action_12
action_11 (47) = happyShift action_13
action_11 (48) = happyShift action_14
action_11 (49) = happyShift action_15
action_11 (51) = happyShift action_16
action_11 (52) = happyShift action_17
action_11 (53) = happyShift action_18
action_11 (4) = happyGoto action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (15) = happyShift action_4
action_12 (27) = happyShift action_5
action_12 (29) = happyShift action_6
action_12 (35) = happyShift action_7
action_12 (36) = happyShift action_8
action_12 (37) = happyShift action_9
action_12 (38) = happyShift action_10
action_12 (39) = happyShift action_2
action_12 (40) = happyShift action_11
action_12 (46) = happyShift action_12
action_12 (47) = happyShift action_13
action_12 (48) = happyShift action_14
action_12 (49) = happyShift action_15
action_12 (51) = happyShift action_16
action_12 (52) = happyShift action_17
action_12 (53) = happyShift action_18
action_12 (4) = happyGoto action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_4
action_13 (27) = happyShift action_5
action_13 (29) = happyShift action_6
action_13 (35) = happyShift action_7
action_13 (36) = happyShift action_8
action_13 (37) = happyShift action_9
action_13 (38) = happyShift action_10
action_13 (39) = happyShift action_2
action_13 (40) = happyShift action_11
action_13 (46) = happyShift action_12
action_13 (47) = happyShift action_13
action_13 (48) = happyShift action_14
action_13 (49) = happyShift action_15
action_13 (51) = happyShift action_16
action_13 (52) = happyShift action_17
action_13 (53) = happyShift action_18
action_13 (4) = happyGoto action_26
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (15) = happyShift action_4
action_14 (27) = happyShift action_5
action_14 (29) = happyShift action_6
action_14 (35) = happyShift action_7
action_14 (36) = happyShift action_8
action_14 (37) = happyShift action_9
action_14 (38) = happyShift action_10
action_14 (39) = happyShift action_2
action_14 (40) = happyShift action_11
action_14 (46) = happyShift action_12
action_14 (47) = happyShift action_13
action_14 (48) = happyShift action_14
action_14 (49) = happyShift action_15
action_14 (51) = happyShift action_16
action_14 (52) = happyShift action_17
action_14 (53) = happyShift action_18
action_14 (4) = happyGoto action_25
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (44) = happyShift action_23
action_15 (45) = happyShift action_24
action_15 (9) = happyGoto action_22
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (26) = happyShift action_21
action_16 _ = happyReduce_15

action_17 (51) = happyShift action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (16) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (29) = happyShift action_58
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_18

action_21 (15) = happyShift action_4
action_21 (27) = happyShift action_5
action_21 (29) = happyShift action_6
action_21 (35) = happyShift action_7
action_21 (36) = happyShift action_8
action_21 (37) = happyShift action_9
action_21 (38) = happyShift action_10
action_21 (39) = happyShift action_2
action_21 (40) = happyShift action_11
action_21 (46) = happyShift action_12
action_21 (47) = happyShift action_13
action_21 (48) = happyShift action_14
action_21 (49) = happyShift action_15
action_21 (51) = happyShift action_16
action_21 (52) = happyShift action_17
action_21 (53) = happyShift action_18
action_21 (4) = happyGoto action_57
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (15) = happyShift action_4
action_22 (27) = happyShift action_5
action_22 (29) = happyShift action_6
action_22 (35) = happyShift action_7
action_22 (36) = happyShift action_8
action_22 (37) = happyShift action_9
action_22 (38) = happyShift action_10
action_22 (39) = happyShift action_2
action_22 (40) = happyShift action_11
action_22 (46) = happyShift action_12
action_22 (47) = happyShift action_13
action_22 (48) = happyShift action_14
action_22 (49) = happyShift action_15
action_22 (51) = happyShift action_16
action_22 (52) = happyShift action_17
action_22 (53) = happyShift action_18
action_22 (4) = happyGoto action_56
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_35

action_24 _ = happyReduce_34

action_25 _ = happyReduce_6

action_26 _ = happyReduce_10

action_27 (15) = happyShift action_4
action_27 (27) = happyShift action_5
action_27 (29) = happyShift action_6
action_27 (31) = happyShift action_41
action_27 (35) = happyShift action_7
action_27 (36) = happyShift action_8
action_27 (37) = happyShift action_9
action_27 (38) = happyShift action_10
action_27 (39) = happyShift action_2
action_27 (40) = happyShift action_11
action_27 (46) = happyShift action_12
action_27 (47) = happyShift action_13
action_27 (48) = happyShift action_14
action_27 (49) = happyShift action_15
action_27 (51) = happyShift action_16
action_27 (52) = happyShift action_17
action_27 (53) = happyShift action_18
action_27 (4) = happyGoto action_55
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_12

action_29 (41) = happyShift action_43
action_29 (50) = happyShift action_44
action_29 (11) = happyGoto action_54
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_36

action_31 _ = happyReduce_37

action_32 (15) = happyShift action_4
action_32 (27) = happyShift action_5
action_32 (29) = happyShift action_6
action_32 (35) = happyShift action_7
action_32 (36) = happyShift action_8
action_32 (37) = happyShift action_9
action_32 (38) = happyShift action_10
action_32 (39) = happyShift action_2
action_32 (40) = happyShift action_11
action_32 (46) = happyShift action_12
action_32 (47) = happyShift action_13
action_32 (48) = happyShift action_14
action_32 (49) = happyShift action_15
action_32 (51) = happyShift action_16
action_32 (52) = happyShift action_17
action_32 (53) = happyShift action_18
action_32 (4) = happyGoto action_53
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_4
action_33 (27) = happyShift action_5
action_33 (29) = happyShift action_6
action_33 (35) = happyShift action_7
action_33 (36) = happyShift action_8
action_33 (37) = happyShift action_9
action_33 (38) = happyShift action_10
action_33 (39) = happyShift action_2
action_33 (40) = happyShift action_11
action_33 (46) = happyShift action_12
action_33 (47) = happyShift action_13
action_33 (48) = happyShift action_14
action_33 (49) = happyShift action_15
action_33 (51) = happyShift action_16
action_33 (52) = happyShift action_17
action_33 (53) = happyShift action_18
action_33 (4) = happyGoto action_52
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_4

action_35 (30) = happyShift action_50
action_35 (32) = happyShift action_51
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_40

action_37 (34) = happyShift action_49
action_37 _ = happyReduce_42

action_38 _ = happyReduce_43

action_39 (28) = happyShift action_48
action_39 (31) = happyShift action_41
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (16) = happyShift action_47
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_4
action_41 (27) = happyShift action_5
action_41 (29) = happyShift action_6
action_41 (35) = happyShift action_7
action_41 (36) = happyShift action_8
action_41 (37) = happyShift action_9
action_41 (38) = happyShift action_10
action_41 (39) = happyShift action_2
action_41 (40) = happyShift action_11
action_41 (46) = happyShift action_12
action_41 (47) = happyShift action_13
action_41 (48) = happyShift action_14
action_41 (49) = happyShift action_15
action_41 (51) = happyShift action_16
action_41 (52) = happyShift action_17
action_41 (53) = happyShift action_18
action_41 (4) = happyGoto action_46
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_4
action_42 (27) = happyShift action_5
action_42 (29) = happyShift action_6
action_42 (35) = happyShift action_7
action_42 (36) = happyShift action_8
action_42 (37) = happyShift action_9
action_42 (38) = happyShift action_10
action_42 (39) = happyShift action_2
action_42 (40) = happyShift action_11
action_42 (46) = happyShift action_12
action_42 (47) = happyShift action_13
action_42 (48) = happyShift action_14
action_42 (49) = happyShift action_15
action_42 (51) = happyShift action_16
action_42 (52) = happyShift action_17
action_42 (53) = happyShift action_18
action_42 (4) = happyGoto action_45
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_39

action_44 _ = happyReduce_38

action_45 (15) = happyShift action_4
action_45 (27) = happyShift action_5
action_45 (29) = happyShift action_6
action_45 (31) = happyShift action_41
action_45 (35) = happyShift action_7
action_45 (36) = happyShift action_8
action_45 (37) = happyShift action_9
action_45 (38) = happyShift action_10
action_45 (39) = happyShift action_2
action_45 (40) = happyShift action_11
action_45 (46) = happyShift action_12
action_45 (47) = happyShift action_13
action_45 (48) = happyShift action_14
action_45 (49) = happyShift action_15
action_45 (51) = happyShift action_16
action_45 (52) = happyShift action_17
action_45 (53) = happyShift action_18
action_45 (4) = happyGoto action_65
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (31) = happyShift action_41
action_46 _ = happyReduce_17

action_47 (34) = happyShift action_64
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_13

action_49 (16) = happyShift action_63
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_16

action_51 (16) = happyShift action_38
action_51 (13) = happyGoto action_62
action_51 (14) = happyGoto action_37
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_8

action_53 _ = happyReduce_11

action_54 (16) = happyShift action_61
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_9

action_56 _ = happyReduce_7

action_57 _ = happyReduce_14

action_58 (27) = happyShift action_60
action_58 (5) = happyGoto action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (30) = happyShift action_73
action_59 (32) = happyShift action_74
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (16) = happyShift action_72
action_60 (41) = happyShift action_43
action_60 (50) = happyShift action_44
action_60 (6) = happyGoto action_68
action_60 (7) = happyGoto action_69
action_60 (8) = happyGoto action_70
action_60 (11) = happyGoto action_71
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (15) = happyShift action_4
action_61 (27) = happyShift action_5
action_61 (29) = happyShift action_6
action_61 (35) = happyShift action_7
action_61 (36) = happyShift action_8
action_61 (37) = happyShift action_9
action_61 (38) = happyShift action_10
action_61 (39) = happyShift action_2
action_61 (40) = happyShift action_11
action_61 (46) = happyShift action_12
action_61 (47) = happyShift action_13
action_61 (48) = happyShift action_14
action_61 (49) = happyShift action_15
action_61 (51) = happyShift action_16
action_61 (52) = happyShift action_17
action_61 (53) = happyShift action_18
action_61 (4) = happyGoto action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_41

action_63 _ = happyReduce_44

action_64 (16) = happyShift action_66
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_1

action_66 (28) = happyShift action_87
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_5

action_68 (28) = happyShift action_86
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (21) = happyShift action_84
action_69 (22) = happyShift action_85
action_69 _ = happyReduce_23

action_70 (17) = happyShift action_79
action_70 (18) = happyShift action_80
action_70 (19) = happyShift action_81
action_70 (20) = happyShift action_82
action_70 (33) = happyShift action_83
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (23) = happyShift action_76
action_71 (24) = happyShift action_77
action_71 (25) = happyShift action_78
action_71 _ = happyReduce_32

action_72 _ = happyReduce_33

action_73 _ = happyReduce_2

action_74 (27) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (16) = happyShift action_72
action_75 (41) = happyShift action_43
action_75 (50) = happyShift action_44
action_75 (6) = happyGoto action_100
action_75 (7) = happyGoto action_69
action_75 (8) = happyGoto action_70
action_75 (11) = happyGoto action_71
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (41) = happyShift action_43
action_76 (50) = happyShift action_44
action_76 (11) = happyGoto action_99
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (41) = happyShift action_43
action_77 (50) = happyShift action_44
action_77 (11) = happyGoto action_98
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (41) = happyShift action_43
action_78 (50) = happyShift action_44
action_78 (11) = happyGoto action_97
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (16) = happyShift action_72
action_79 (41) = happyShift action_43
action_79 (50) = happyShift action_44
action_79 (8) = happyGoto action_96
action_79 (11) = happyGoto action_71
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (16) = happyShift action_72
action_80 (41) = happyShift action_43
action_80 (50) = happyShift action_44
action_80 (8) = happyGoto action_95
action_80 (11) = happyGoto action_71
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (16) = happyShift action_72
action_81 (41) = happyShift action_43
action_81 (50) = happyShift action_44
action_81 (8) = happyGoto action_94
action_81 (11) = happyGoto action_71
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (16) = happyShift action_72
action_82 (41) = happyShift action_43
action_82 (50) = happyShift action_44
action_82 (8) = happyGoto action_93
action_82 (11) = happyGoto action_71
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (16) = happyShift action_72
action_83 (41) = happyShift action_43
action_83 (50) = happyShift action_44
action_83 (8) = happyGoto action_92
action_83 (11) = happyGoto action_71
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (16) = happyShift action_72
action_84 (41) = happyShift action_43
action_84 (50) = happyShift action_44
action_84 (7) = happyGoto action_91
action_84 (8) = happyGoto action_70
action_84 (11) = happyGoto action_71
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (16) = happyShift action_72
action_85 (41) = happyShift action_43
action_85 (50) = happyShift action_44
action_85 (7) = happyGoto action_90
action_85 (8) = happyGoto action_70
action_85 (11) = happyGoto action_71
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (26) = happyShift action_89
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (16) = happyShift action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (15) = happyShift action_4
action_88 (27) = happyShift action_5
action_88 (29) = happyShift action_6
action_88 (35) = happyShift action_7
action_88 (36) = happyShift action_8
action_88 (37) = happyShift action_9
action_88 (38) = happyShift action_10
action_88 (39) = happyShift action_2
action_88 (40) = happyShift action_11
action_88 (46) = happyShift action_12
action_88 (47) = happyShift action_13
action_88 (48) = happyShift action_14
action_88 (49) = happyShift action_15
action_88 (51) = happyShift action_16
action_88 (52) = happyShift action_17
action_88 (53) = happyShift action_18
action_88 (4) = happyGoto action_103
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (15) = happyShift action_4
action_89 (27) = happyShift action_5
action_89 (29) = happyShift action_6
action_89 (35) = happyShift action_7
action_89 (36) = happyShift action_8
action_89 (37) = happyShift action_9
action_89 (38) = happyShift action_10
action_89 (39) = happyShift action_2
action_89 (40) = happyShift action_11
action_89 (46) = happyShift action_12
action_89 (47) = happyShift action_13
action_89 (48) = happyShift action_14
action_89 (49) = happyShift action_15
action_89 (51) = happyShift action_16
action_89 (52) = happyShift action_17
action_89 (53) = happyShift action_18
action_89 (4) = happyGoto action_102
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_22

action_91 _ = happyReduce_21

action_92 _ = happyReduce_28

action_93 _ = happyReduce_26

action_94 _ = happyReduce_24

action_95 _ = happyReduce_27

action_96 _ = happyReduce_25

action_97 _ = happyReduce_31

action_98 _ = happyReduce_30

action_99 _ = happyReduce_29

action_100 (28) = happyShift action_101
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (26) = happyShift action_104
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (31) = happyShift action_41
action_102 _ = happyReduce_19

action_103 _ = happyReduce_3

action_104 (15) = happyShift action_4
action_104 (27) = happyShift action_5
action_104 (29) = happyShift action_6
action_104 (35) = happyShift action_7
action_104 (36) = happyShift action_8
action_104 (37) = happyShift action_9
action_104 (38) = happyShift action_10
action_104 (39) = happyShift action_2
action_104 (40) = happyShift action_11
action_104 (46) = happyShift action_12
action_104 (47) = happyShift action_13
action_104 (48) = happyShift action_14
action_104 (49) = happyShift action_15
action_104 (51) = happyShift action_16
action_104 (52) = happyShift action_17
action_104 (53) = happyShift action_18
action_104 (4) = happyGoto action_105
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (31) = happyShift action_41
action_105 _ = happyReduce_20

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Add happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 5 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ReplicateIf happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 8 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_7)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Subtile happy_var_3 happy_var_5 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_2  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Return happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 5 4 happyReduction_5
happyReduction_5 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_4)) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Replicate happy_var_2 happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Blank happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Reflect happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	(HappyTerminal (TokenInt _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Rotate happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (And happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Negate happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	(HappyTerminal (TokenInt _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Scale happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Reverse happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (Let happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  4 happyReduction_15
happyReduction_15 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Rows3 happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Seq happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Arg happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 5 5 happyReduction_19
happyReduction_19 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 ([(happy_var_2,happy_var_5)]
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 7 5 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (happy_var_1 ++ [(happy_var_4,happy_var_7)]
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (And1 happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Or1 happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  6 happyReduction_23
happyReduction_23 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (Single1 happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  7 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (BooleanExp happy_var_1 "<" happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  7 happyReduction_25
happyReduction_25 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (BooleanExp happy_var_1 "<=" happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  7 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (BooleanExp happy_var_1 ">" happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  7 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (BooleanExp happy_var_1 ">=" happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  7 happyReduction_28
happyReduction_28 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (BooleanExp happy_var_1 "==" happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  8 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (SubBooleanExp happy_var_1 "+" happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  8 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (SubBooleanExp happy_var_1 "-" happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  8 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (SubBooleanExp happy_var_1 "*" happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  8 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (SubBooleanExpSingle happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  8 happyReduction_33
happyReduction_33 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn8
		 (Digit happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  9 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn9
		 (Vertical
	)

happyReduce_35 = happySpecReduce_1  9 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn9
		 (Horizontal
	)

happyReduce_36 = happySpecReduce_1  10 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn10
		 (Relative
	)

happyReduce_37 = happySpecReduce_1  10 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn10
		 (Absolute
	)

happyReduce_38 = happySpecReduce_1  11 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn11
		 (Row
	)

happyReduce_39 = happySpecReduce_1  11 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn11
		 (Column
	)

happyReduce_40 = happySpecReduce_1  12 happyReduction_40
happyReduction_40 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  12 happyReduction_41
happyReduction_41 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  13 happyReduction_42
happyReduction_42 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  14 happyReduction_43
happyReduction_43 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  14 happyReduction_44
happyReduction_44 (HappyTerminal (TokenInt _ happy_var_3))
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 54 54 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSubtile _ -> cont 15;
	TokenInt _ happy_dollar_dollar -> cont 16;
	TokenLessThanEqualTo _ -> cont 17;
	TokenGreaterThanEqualTo _ -> cont 18;
	TokenLessThan _ -> cont 19;
	TokenGreaterThan _ -> cont 20;
	TokenBooleanAnd _ -> cont 21;
	TokenBooleanOr _ -> cont 22;
	TokenPlus _ -> cont 23;
	TokenMinus _ -> cont 24;
	TokenMultiply _ -> cont 25;
	TokenEq _ -> cont 26;
	TokenLParen _ -> cont 27;
	TokenRParen _ -> cont 28;
	TokenLBracket _ -> cont 29;
	TokenRBracket _ -> cont 30;
	TokenSeq _ -> cont 31;
	TokenColon _ -> cont 32;
	TokenBooleanEquals _ -> cont 33;
	TokenComma _ -> cont 34;
	TokenReturn _ -> cont 35;
	TokenRotate _ -> cont 36;
	TokenScale _ -> cont 37;
	TokenReplicate _ -> cont 38;
	TokenAdd _ -> cont 39;
	TokenReverse _ -> cont 40;
	TokenColumn _ -> cont 41;
	TokenRelative _ -> cont 42;
	TokenAbsolute _ -> cont 43;
	TokenHorizontal _ -> cont 44;
	TokenVertical _ -> cont 45;
	TokenAnd _ -> cont 46;
	TokenNegate _ -> cont 47;
	TokenBlank _ -> cont 48;
	TokenReflect _ -> cont 49;
	TokenRow _ -> cont 50;
	TokenVar _ happy_dollar_dollar -> cont 51;
	TokenArg _ -> cont 52;
	TokenReplicateIf _ -> cont 53;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 54 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))
data Axis = Row | Column deriving (Eq, Show)
data ReplicateArg = Relative | Absolute deriving Show
data ReflectArg = Vertical | Horizontal deriving Show
data BooleanExp1 = And1 BooleanExp BooleanExp
                 | Or1 BooleanExp BooleanExp
                 | Single1 BooleanExp
                 deriving Show
data BooleanExp = BooleanExp SubBooleanExp String SubBooleanExp deriving Show
data SubBooleanExp = SubBooleanExp Axis String Axis
                   | SubBooleanExpSingle Axis 
                   | Digit Int
                   deriving Show
data Exp = Add Axis Exp Exp
         | ReplicateIf Int [(BooleanExp1,Exp)]
         | Subtile Int Int Int Exp
         | Return Exp
         | Replicate ReplicateArg Axis Int Exp
         | Reflect ReflectArg Exp
         | Blank Exp
         | And Exp Exp
         | Negate Exp
         | Rotate Int Exp
         | Scale Int Exp
         | Reverse Exp
         | Let String Exp
         | Seq Exp Exp
         | Var String
         | Rows3 [[Int]]
         | Arg String
         deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
