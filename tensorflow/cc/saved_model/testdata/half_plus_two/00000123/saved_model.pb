ÂM
Ź
9
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ď
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.0.02unknown8
T
a/initial_valueConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
e
a
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
shape: *
	container 

a/AssignAssignaa/initial_value*
_class

loc:@a*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
L
a/readIdentitya*
_class

loc:@a*
T0*
_output_shapes
: 
T
b/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *   @
e
b
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
shape: *
	container 

b/AssignAssignbb/initial_value*
_class

loc:@b*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
L
b/readIdentityb*
_class

loc:@b*
_output_shapes
: *
T0
T
c/initial_valueConst*
_output_shapes
: *
valueB
 *  @@*
dtype0
e
c
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
shape: *
	container 

c/AssignAssigncc/initial_value*
_class

loc:@c*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
L
c/readIdentityc*
_class

loc:@c*
T0*
_output_shapes
: 
M

tf_examplePlaceholder*
_output_shapes
:*
shape: *
dtype0
U
ParseExample/ConstConst*
_output_shapes
: *
valueB *
dtype0
`
ParseExample/key_x2Const*
dtype0*
_output_shapes
:*
valueB*    
d
ParseExample/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0

ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
b
ParseExample/ParseExample/namesConst*
_output_shapes
: *
valueB *
dtype0
h
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*
_output_shapes
: *
value	B Bx
i
&ParseExample/ParseExample/dense_keys_1Const*
_output_shapes
: *
value
B Bx2*
dtype0
ď
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1ParseExample/ConstParseExample/Reshape*
dense_shapes
::*
Nsparse *
Ndense*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
sparse_types
 *
Tdense
2
Z
xIdentityParseExample/ParseExample*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
G
MulMula/readx*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
G
yAddMulb/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
I
Mul_1Mula/readx*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
J
y2AddMul_1c/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
]
x2IdentityParseExample/ParseExample:1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
Mul_2Mula/readx2*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
y3AddMul_2c/read*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
i
ConstConst*
dtype0*
_output_shapes
: *4
value+B) B#/tmp/original/export/assets/foo.txt
e
filename_tensor/initial_valueConst*
_output_shapes
: *
valueB Bfoo.txt*
dtype0
s
filename_tensor
VariableV2*
_output_shapes
: *
shared_name *
shape: *
	container *
dtype0
ž
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*"
_class
loc:@filename_tensor*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
v
filename_tensor/readIdentityfilename_tensor*"
_class
loc:@filename_tensor*
T0*
_output_shapes
: 
T
Assign/valueConst*
dtype0*
_output_shapes
: *
valueB Bfoo.txt

AssignAssignfilename_tensorAssign/value*"
_class
loc:@filename_tensor*
T0*
_output_shapes
: *
validate_shape(*
use_locking( 
-
initNoOp	^a/Assign	^b/Assign	^c/Assign


group_depsNoOp^Assign
P

save/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_b50521c0645f420290a2d54d1f2a071c/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N*
	separator 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
h
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBaBbBc
i
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesabc*
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
_output_shapes
:*

axis *
N*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
_output_shapes
: *
T0
e
save/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBa*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/AssignAssignasave/RestoreV2*
_class

loc:@a*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
g
save/RestoreV2_1/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBb
j
!save/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_1Assignbsave/RestoreV2_1*
_class

loc:@b*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
g
save/RestoreV2_2/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBBc
j
!save/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2

save/Assign_2Assigncsave/RestoreV2_2*
_class

loc:@c*
use_locking(*
_output_shapes
: *
T0*
validate_shape(
H
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"j
trainable_variablesSQ

a:0a/Assigna/read:0

b:0b/Assignb/read:0

c:0c/Assignc/read:0"
asset_filepaths
	
Const:0"`
	variablesSQ

a:0a/Assigna/read:0

b:0b/Assignb/read:0

c:0c/Assignc/read:0"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt" 
legacy_init_op


group_deps*v
classify_x_to_yc

inputs
tf_example:0$
scores
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify*u
regress_x_to_yc

inputs
tf_example:0%
outputs
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*
classify_x2_to_y3k
%
inputs
x2:0˙˙˙˙˙˙˙˙˙%
scores
y3:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify*q
serving_default^

x
x:0˙˙˙˙˙˙˙˙˙
y
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict*
regress_x2_to_y3k
%
inputs
x2:0˙˙˙˙˙˙˙˙˙&
outputs
y3:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*w
regress_x_to_y2d

inputs
tf_example:0&
outputs
y2:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress