��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_5/bias
w
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_5/bias
w
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/v/dense_5/kernel

)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/m/dense_5/kernel

)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel*
_output_shapes

: *
dtype0
~
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
: *
dtype0
~
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/v/dense_4/kernel

)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/m/dense_4/kernel

)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes

:@ *
dtype0
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*&
shared_nameAdam/v/dense_3/kernel
�
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel* 
_output_shapes
:
��@*
dtype0
�
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*&
shared_nameAdam/m/dense_3/kernel
�
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel* 
_output_shapes
:
��@*
dtype0
�
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:`*
dtype0
�
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:`*
dtype0
�
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameAdam/v/conv2d_2/kernel
�
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
:`*
dtype0
�
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*'
shared_nameAdam/m/conv2d_2/kernel
�
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
:`*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@ *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��@*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
��@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:`*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:`*
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������d(*
dtype0*$
shape:���������d(
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_2/kernelconv2d_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  @E8� *,
f'R%
#__inference_signature_wrapper_30393

NoOpNoOp
�>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�=
value�=B�= B�=
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses* 
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias*
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias*
<
0
1
,2
-3
44
55
<6
=7*
<
0
1
,2
-3
44
55
<6
=7*
* 
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ctrace_0
Dtrace_1* 

Etrace_0
Ftrace_1* 
* 
�
G
_variables
H_iterations
I_learning_rate
J_index_dict
K
_momentums
L_velocities
M_update_step_xla*

Nserving_default* 

0
1*

0
1*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ttrace_0* 

Utrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

[trace_0* 

\trace_0* 
* 
* 
* 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

btrace_0* 

ctrace_0* 

,0
-1*

,0
-1*
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

40
51*

40
51*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

<0
=1*

<0
=1*
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

wtrace_0* 

xtrace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

y0
z1*
* 
* 
* 
* 
* 
* 
�
H0
{1
|2
}3
~4
5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
A
{0
}1
2
�3
�4
�5
�6
�7*
B
|0
~1
�2
�3
�4
�5
�6
�7*
r
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_2/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_2/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_2/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_3/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_3/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense_3/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense_3/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_4/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_4/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_4/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_5/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_5/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_5/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_5/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_2/kernelconv2d_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcountConst*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *'
f"R 
__inference__traced_save_30736
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_2/kernelconv2d_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� **
f%R#
!__inference__traced_restore_30835˫
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_30221

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_30253

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_30442

inputs!
unknown:`
	unknown_0:`
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������a%`*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30197w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������a%`<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d(: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30438:%!

_user_specified_name30436:W S
/
_output_shapes
:���������d(
 
_user_specified_nameinputs
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_30514

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30463

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_30423
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
P
"__inference__update_step_xla_30408
gradient
variable:
��@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
��@: *
	_noinline(:($
"
_user_specified_name
variable:J F
 
_output_shapes
:
��@
"
_user_specified_name
gradient
�
�
'__inference_dense_4_layer_call_fn_30503

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_30237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30499:%!

_user_specified_name30497:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�.
�
 __inference__wrapped_model_30174
input_1G
-model_conv2d_2_conv2d_readvariableop_resource:`<
.model_conv2d_2_biasadd_readvariableop_resource:`@
,model_dense_3_matmul_readvariableop_resource:
��@;
-model_dense_3_biasadd_readvariableop_resource:@>
,model_dense_4_matmul_readvariableop_resource:@ ;
-model_dense_4_biasadd_readvariableop_resource: >
,model_dense_5_matmul_readvariableop_resource: ;
-model_dense_5_biasadd_readvariableop_resource:
identity��%model/conv2d_2/BiasAdd/ReadVariableOp�$model/conv2d_2/Conv2D/ReadVariableOp�$model/dense_3/BiasAdd/ReadVariableOp�#model/dense_3/MatMul/ReadVariableOp�$model/dense_4/BiasAdd/ReadVariableOp�#model/dense_4/MatMul/ReadVariableOp�$model/dense_5/BiasAdd/ReadVariableOp�#model/dense_5/MatMul/ReadVariableOp�
$model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0�
model/conv2d_2/Conv2DConv2Dinput_1,model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������a%`*
paddingVALID*
strides
�
%model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype0�
model/conv2d_2/BiasAddBiasAddmodel/conv2d_2/Conv2D:output:0-model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������a%`v
model/conv2d_2/ReluRelumodel/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������a%`�
model/max_pooling2d_2/MaxPoolMaxPool!model/conv2d_2/Relu:activations:0*/
_output_shapes
:���������	`*
ksize
*
paddingVALID*
strides
f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� Q  �
model/flatten_1/ReshapeReshape&model/max_pooling2d_2/MaxPool:output:0model/flatten_1/Const:output:0*
T0*)
_output_shapes
:������������
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0�
model/dense_3/MatMulMatMul model/flatten_1/Reshape:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
model/dense_3/ReluRelumodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model/dense_4/MatMulMatMul model/dense_3/Relu:activations:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� l
model/dense_4/ReluRelumodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
#model/dense_5/MatMul/ReadVariableOpReadVariableOp,model_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model/dense_5/MatMulMatMul model/dense_4/Relu:activations:0+model/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_5/BiasAdd/ReadVariableOpReadVariableOp-model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_5/BiasAddBiasAddmodel/dense_5/MatMul:product:0,model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_5/SoftmaxSoftmaxmodel/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^model/conv2d_2/BiasAdd/ReadVariableOp%^model/conv2d_2/Conv2D/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp%^model/dense_5/BiasAdd/ReadVariableOp$^model/dense_5/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������d(: : : : : : : : 2N
%model/conv2d_2/BiasAdd/ReadVariableOp%model/conv2d_2/BiasAdd/ReadVariableOp2L
$model/conv2d_2/Conv2D/ReadVariableOp$model/conv2d_2/Conv2D/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2L
$model/dense_5/BiasAdd/ReadVariableOp$model/dense_5/BiasAdd/ReadVariableOp2J
#model/dense_5/MatMul/ReadVariableOp#model/dense_5/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:���������d(
!
_user_specified_name	input_1
�
J
"__inference__update_step_xla_30413
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_30403
gradient
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:`: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:`
"
_user_specified_name
gradient
�
�
#__inference_signature_wrapper_30393
input_1!
unknown:`
	unknown_0:`
	unknown_1:
��@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  @E8� *)
f$R"
 __inference__wrapped_model_30174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������d(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30389:%!

_user_specified_name30387:%!

_user_specified_name30385:%!

_user_specified_name30383:%!

_user_specified_name30381:%!

_user_specified_name30379:%!

_user_specified_name30377:%!

_user_specified_name30375:X T
/
_output_shapes
:���������d(
!
_user_specified_name	input_1
�
V
"__inference__update_step_xla_30398
gradient"
variable:`*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:`: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:`
"
_user_specified_name
gradient
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30179

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_30433
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
%__inference_model_layer_call_fn_30328
input_1!
unknown:`
	unknown_0:`
	unknown_1:
��@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  @E8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_30286o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������d(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30324:%!

_user_specified_name30322:%!

_user_specified_name30320:%!

_user_specified_name30318:%!

_user_specified_name30316:%!

_user_specified_name30314:%!

_user_specified_name30312:%!

_user_specified_name30310:X T
/
_output_shapes
:���������d(
!
_user_specified_name	input_1
�
�
%__inference_model_layer_call_fn_30307
input_1!
unknown:`
	unknown_0:`
	unknown_1:
��@
	unknown_2:@
	unknown_3:@ 
	unknown_4: 
	unknown_5: 
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*8
config_proto(&

CPU

GPU2*0J

  @E8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_30260o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������d(: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30303:%!

_user_specified_name30301:%!

_user_specified_name30299:%!

_user_specified_name30297:%!

_user_specified_name30295:%!

_user_specified_name30293:%!

_user_specified_name30291:%!

_user_specified_name30289:X T
/
_output_shapes
:���������d(
!
_user_specified_name	input_1
�
E
)__inference_flatten_1_layer_call_fn_30468

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_30209b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������	`:W S
/
_output_shapes
:���������	`
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30197

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������a%`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������a%`X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������a%`i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������a%`S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������d(
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_30835
file_prefix:
 assignvariableop_conv2d_2_kernel:`.
 assignvariableop_1_conv2d_2_bias:`5
!assignvariableop_2_dense_3_kernel:
��@-
assignvariableop_3_dense_3_bias:@3
!assignvariableop_4_dense_4_kernel:@ -
assignvariableop_5_dense_4_bias: 3
!assignvariableop_6_dense_5_kernel: -
assignvariableop_7_dense_5_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: D
*assignvariableop_10_adam_m_conv2d_2_kernel:`D
*assignvariableop_11_adam_v_conv2d_2_kernel:`6
(assignvariableop_12_adam_m_conv2d_2_bias:`6
(assignvariableop_13_adam_v_conv2d_2_bias:`=
)assignvariableop_14_adam_m_dense_3_kernel:
��@=
)assignvariableop_15_adam_v_dense_3_kernel:
��@5
'assignvariableop_16_adam_m_dense_3_bias:@5
'assignvariableop_17_adam_v_dense_3_bias:@;
)assignvariableop_18_adam_m_dense_4_kernel:@ ;
)assignvariableop_19_adam_v_dense_4_kernel:@ 5
'assignvariableop_20_adam_m_dense_4_bias: 5
'assignvariableop_21_adam_v_dense_4_bias: ;
)assignvariableop_22_adam_m_dense_5_kernel: ;
)assignvariableop_23_adam_v_dense_5_kernel: 5
'assignvariableop_24_adam_m_dense_5_bias:5
'assignvariableop_25_adam_v_dense_5_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_2_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_2_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_3_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_3_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_4_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_4_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_5_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_5_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp*assignvariableop_10_adam_m_conv2d_2_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_adam_v_conv2d_2_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_m_conv2d_2_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_v_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_m_dense_3_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_v_dense_3_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_m_dense_3_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_v_dense_3_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_dense_4_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_dense_4_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_m_dense_4_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_v_dense_4_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_dense_5_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_dense_5_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_5_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_5_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:3/
-
_user_specified_nameAdam/v/dense_5/bias:3/
-
_user_specified_nameAdam/m/dense_5/bias:51
/
_user_specified_nameAdam/v/dense_5/kernel:51
/
_user_specified_nameAdam/m/dense_5/kernel:3/
-
_user_specified_nameAdam/v/dense_4/bias:3/
-
_user_specified_nameAdam/m/dense_4/bias:51
/
_user_specified_nameAdam/v/dense_4/kernel:51
/
_user_specified_nameAdam/m/dense_4/kernel:3/
-
_user_specified_nameAdam/v/dense_3/bias:3/
-
_user_specified_nameAdam/m/dense_3/bias:51
/
_user_specified_nameAdam/v/dense_3/kernel:51
/
_user_specified_nameAdam/m/dense_3/kernel:40
.
_user_specified_nameAdam/v/conv2d_2/bias:40
.
_user_specified_nameAdam/m/conv2d_2/bias:62
0
_user_specified_nameAdam/v/conv2d_2/kernel:62
0
_user_specified_nameAdam/m/conv2d_2/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
B__inference_dense_5_layer_call_and_return_conditional_losses_30534

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_30237

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
N
"__inference__update_step_xla_30418
gradient
variable:@ *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@ : *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

:@ 
"
_user_specified_name
gradient
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_30474

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� Q  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������	`:W S
/
_output_shapes
:���������	`
 
_user_specified_nameinputs
�

�
B__inference_dense_3_layer_call_and_return_conditional_losses_30494

inputs2
matmul_readvariableop_resource:
��@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
@__inference_model_layer_call_and_return_conditional_losses_30286
input_1(
conv2d_2_30263:`
conv2d_2_30265:`!
dense_3_30270:
��@
dense_3_30272:@
dense_4_30275:@ 
dense_4_30277: 
dense_5_30280: 
dense_5_30282:
identity�� conv2d_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_2_30263conv2d_2_30265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������a%`*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30197�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	`* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30179�
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_30209�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_30270dense_3_30272*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_30221�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_30275dense_4_30277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_30237�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_30280dense_5_30282*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30253w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������d(: : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:%!

_user_specified_name30282:%!

_user_specified_name30280:%!

_user_specified_name30277:%!

_user_specified_name30275:%!

_user_specified_name30272:%!

_user_specified_name30270:%!

_user_specified_name30265:%!

_user_specified_name30263:X T
/
_output_shapes
:���������d(
!
_user_specified_name	input_1
�
K
/__inference_max_pooling2d_2_layer_call_fn_30458

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30179�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
@__inference_model_layer_call_and_return_conditional_losses_30260
input_1(
conv2d_2_30198:`
conv2d_2_30200:`!
dense_3_30222:
��@
dense_3_30224:@
dense_4_30238:@ 
dense_4_30240: 
dense_5_30254: 
dense_5_30256:
identity�� conv2d_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_2_30198conv2d_2_30200*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������a%`*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30197�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������	`* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30179�
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  @E8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_30209�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_30222dense_3_30224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_30221�
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_30238dense_4_30240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_30237�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_30254dense_5_30256*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30253w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������d(: : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:%!

_user_specified_name30256:%!

_user_specified_name30254:%!

_user_specified_name30240:%!

_user_specified_name30238:%!

_user_specified_name30224:%!

_user_specified_name30222:%!

_user_specified_name30200:%!

_user_specified_name30198:X T
/
_output_shapes
:���������d(
!
_user_specified_name	input_1
�
�
'__inference_dense_5_layer_call_fn_30523

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_30253o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30519:%!

_user_specified_name30517:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
'__inference_dense_3_layer_call_fn_30483

inputs
unknown:
��@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  @E8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_30221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30479:%!

_user_specified_name30477:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30453

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������a%`*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������a%`X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������a%`i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������a%`S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������d(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������d(
 
_user_specified_nameinputs
��
�
__inference__traced_save_30736
file_prefix@
&read_disablecopyonread_conv2d_2_kernel:`4
&read_1_disablecopyonread_conv2d_2_bias:`;
'read_2_disablecopyonread_dense_3_kernel:
��@3
%read_3_disablecopyonread_dense_3_bias:@9
'read_4_disablecopyonread_dense_4_kernel:@ 3
%read_5_disablecopyonread_dense_4_bias: 9
'read_6_disablecopyonread_dense_5_kernel: 3
%read_7_disablecopyonread_dense_5_bias:,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: J
0read_10_disablecopyonread_adam_m_conv2d_2_kernel:`J
0read_11_disablecopyonread_adam_v_conv2d_2_kernel:`<
.read_12_disablecopyonread_adam_m_conv2d_2_bias:`<
.read_13_disablecopyonread_adam_v_conv2d_2_bias:`C
/read_14_disablecopyonread_adam_m_dense_3_kernel:
��@C
/read_15_disablecopyonread_adam_v_dense_3_kernel:
��@;
-read_16_disablecopyonread_adam_m_dense_3_bias:@;
-read_17_disablecopyonread_adam_v_dense_3_bias:@A
/read_18_disablecopyonread_adam_m_dense_4_kernel:@ A
/read_19_disablecopyonread_adam_v_dense_4_kernel:@ ;
-read_20_disablecopyonread_adam_m_dense_4_bias: ;
-read_21_disablecopyonread_adam_v_dense_4_bias: A
/read_22_disablecopyonread_adam_m_dense_5_kernel: A
/read_23_disablecopyonread_adam_v_dense_5_kernel: ;
-read_24_disablecopyonread_adam_m_dense_5_bias:;
-read_25_disablecopyonread_adam_v_dense_5_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_2_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:`*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:`i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:`z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_2_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:`{
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_3_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��@*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��@e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��@y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_3_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_4_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@ y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_4_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: {
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_5_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

: y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_5_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead0read_10_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp0read_10_disablecopyonread_adam_m_conv2d_2_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:`*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:`m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:`�
Read_11/DisableCopyOnReadDisableCopyOnRead0read_11_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp0read_11_disablecopyonread_adam_v_conv2d_2_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:`*
dtype0w
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:`m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
:`�
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_adam_m_conv2d_2_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:`�
Read_13/DisableCopyOnReadDisableCopyOnRead.read_13_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp.read_13_disablecopyonread_adam_v_conv2d_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:`*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:`a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:`�
Read_14/DisableCopyOnReadDisableCopyOnRead/read_14_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp/read_14_disablecopyonread_adam_m_dense_3_kernel^Read_14/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��@*
dtype0q
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��@g
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��@�
Read_15/DisableCopyOnReadDisableCopyOnRead/read_15_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp/read_15_disablecopyonread_adam_v_dense_3_kernel^Read_15/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��@*
dtype0q
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��@g
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��@�
Read_16/DisableCopyOnReadDisableCopyOnRead-read_16_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp-read_16_disablecopyonread_adam_m_dense_3_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_17/DisableCopyOnReadDisableCopyOnRead-read_17_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp-read_17_disablecopyonread_adam_v_dense_3_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_18/DisableCopyOnReadDisableCopyOnRead/read_18_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp/read_18_disablecopyonread_adam_m_dense_4_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_v_dense_4_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_20/DisableCopyOnReadDisableCopyOnRead-read_20_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp-read_20_disablecopyonread_adam_m_dense_4_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_21/DisableCopyOnReadDisableCopyOnRead-read_21_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp-read_21_disablecopyonread_adam_v_dense_4_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_dense_5_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_dense_5_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_5_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_5_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:3/
-
_user_specified_nameAdam/v/dense_5/bias:3/
-
_user_specified_nameAdam/m/dense_5/bias:51
/
_user_specified_nameAdam/v/dense_5/kernel:51
/
_user_specified_nameAdam/m/dense_5/kernel:3/
-
_user_specified_nameAdam/v/dense_4/bias:3/
-
_user_specified_nameAdam/m/dense_4/bias:51
/
_user_specified_nameAdam/v/dense_4/kernel:51
/
_user_specified_nameAdam/m/dense_4/kernel:3/
-
_user_specified_nameAdam/v/dense_3/bias:3/
-
_user_specified_nameAdam/m/dense_3/bias:51
/
_user_specified_nameAdam/v/dense_3/kernel:51
/
_user_specified_nameAdam/m/dense_3/kernel:40
.
_user_specified_nameAdam/v/conv2d_2/bias:40
.
_user_specified_nameAdam/m/conv2d_2/bias:62
0
_user_specified_nameAdam/v/conv2d_2/kernel:62
0
_user_specified_nameAdam/m/conv2d_2/kernel:-
)
'
_user_specified_namelearning_rate:)	%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_5/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_30209

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� Q  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������	`:W S
/
_output_shapes
:���������	`
 
_user_specified_nameinputs
�
N
"__inference__update_step_xla_30428
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
: : *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

: 
"
_user_specified_name
gradient"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������d(;
dense_50
StatefulPartitionedCall:0���������tensorflow/serving/predict:ޱ
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses

4kernel
5bias"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
X
0
1
,2
-3
44
55
<6
=7"
trackable_list_wrapper
X
0
1
,2
-3
44
55
<6
=7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ctrace_0
Dtrace_12�
%__inference_model_layer_call_fn_30307
%__inference_model_layer_call_fn_30328�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zCtrace_0zDtrace_1
�
Etrace_0
Ftrace_12�
@__inference_model_layer_call_and_return_conditional_losses_30260
@__inference_model_layer_call_and_return_conditional_losses_30286�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zEtrace_0zFtrace_1
�B�
 __inference__wrapped_model_30174input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
G
_variables
H_iterations
I_learning_rate
J_index_dict
K
_momentums
L_velocities
M_update_step_xla"
experimentalOptimizer
,
Nserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_02�
(__inference_conv2d_2_layer_call_fn_30442�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0
�
Utrace_02�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30453�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0
):'`2conv2d_2/kernel
:`2conv2d_2/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
[trace_02�
/__inference_max_pooling2d_2_layer_call_fn_30458�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z[trace_0
�
\trace_02�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30463�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
btrace_02�
)__inference_flatten_1_layer_call_fn_30468�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zbtrace_0
�
ctrace_02�
D__inference_flatten_1_layer_call_and_return_conditional_losses_30474�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zctrace_0
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
'__inference_dense_3_layer_call_fn_30483�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_30494�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
": 
��@2dense_3/kernel
:@2dense_3/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
'__inference_dense_4_layer_call_fn_30503�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
qtrace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_30514�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zqtrace_0
 :@ 2dense_4/kernel
: 2dense_4/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_02�
'__inference_dense_5_layer_call_fn_30523�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0
�
xtrace_02�
B__inference_dense_5_layer_call_and_return_conditional_losses_30534�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zxtrace_0
 : 2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_30307input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_30328input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_30260input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_30286input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
H0
{1
|2
}3
~4
5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
]
{0
}1
2
�3
�4
�5
�6
�7"
trackable_list_wrapper
^
|0
~1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_72�
"__inference__update_step_xla_30398
"__inference__update_step_xla_30403
"__inference__update_step_xla_30408
"__inference__update_step_xla_30413
"__inference__update_step_xla_30418
"__inference__update_step_xla_30423
"__inference__update_step_xla_30428
"__inference__update_step_xla_30433�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7
�B�
#__inference_signature_wrapper_30393input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_conv2d_2_layer_call_fn_30442inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30453inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_max_pooling2d_2_layer_call_fn_30458inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30463inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_flatten_1_layer_call_fn_30468inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_1_layer_call_and_return_conditional_losses_30474inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_3_layer_call_fn_30483inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_30494inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_4_layer_call_fn_30503inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_30514inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_5_layer_call_fn_30523inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_5_layer_call_and_return_conditional_losses_30534inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.:,`2Adam/m/conv2d_2/kernel
.:,`2Adam/v/conv2d_2/kernel
 :`2Adam/m/conv2d_2/bias
 :`2Adam/v/conv2d_2/bias
':%
��@2Adam/m/dense_3/kernel
':%
��@2Adam/v/dense_3/kernel
:@2Adam/m/dense_3/bias
:@2Adam/v/dense_3/bias
%:#@ 2Adam/m/dense_4/kernel
%:#@ 2Adam/v/dense_4/kernel
: 2Adam/m/dense_4/bias
: 2Adam/v/dense_4/bias
%:# 2Adam/m/dense_5/kernel
%:# 2Adam/v/dense_5/kernel
:2Adam/m/dense_5/bias
:2Adam/v/dense_5/bias
�B�
"__inference__update_step_xla_30398gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30403gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30408gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30413gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30418gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30423gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30428gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_30433gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__update_step_xla_30398~x�u
n�k
!�
gradient`
<�9	%�"
�`
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_30403f`�]
V�S
�
gradient`
0�-	�
�`
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_30408rl�i
b�_
�
gradient
��@
6�3	�
�
��@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_30413f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_30418nh�e
^�[
�
gradient@ 
4�1	�
�@ 
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_30423f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�����?
� "
 �
"__inference__update_step_xla_30428nh�e
^�[
�
gradient 
4�1	�
� 
�
p
` VariableSpec 
`����?
� "
 �
"__inference__update_step_xla_30433f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�����?
� "
 �
 __inference__wrapped_model_30174w,-45<=8�5
.�+
)�&
input_1���������d(
� "1�.
,
dense_5!�
dense_5����������
C__inference_conv2d_2_layer_call_and_return_conditional_losses_30453s7�4
-�*
(�%
inputs���������d(
� "4�1
*�'
tensor_0���������a%`
� �
(__inference_conv2d_2_layer_call_fn_30442h7�4
-�*
(�%
inputs���������d(
� ")�&
unknown���������a%`�
B__inference_dense_3_layer_call_and_return_conditional_losses_30494e,-1�.
'�$
"�
inputs�����������
� ",�)
"�
tensor_0���������@
� �
'__inference_dense_3_layer_call_fn_30483Z,-1�.
'�$
"�
inputs�����������
� "!�
unknown���������@�
B__inference_dense_4_layer_call_and_return_conditional_losses_30514c45/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
'__inference_dense_4_layer_call_fn_30503X45/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
B__inference_dense_5_layer_call_and_return_conditional_losses_30534c<=/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
'__inference_dense_5_layer_call_fn_30523X<=/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
D__inference_flatten_1_layer_call_and_return_conditional_losses_30474i7�4
-�*
(�%
inputs���������	`
� ".�+
$�!
tensor_0�����������
� �
)__inference_flatten_1_layer_call_fn_30468^7�4
-�*
(�%
inputs���������	`
� "#� 
unknown������������
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_30463�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_2_layer_call_fn_30458�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
@__inference_model_layer_call_and_return_conditional_losses_30260z,-45<=@�=
6�3
)�&
input_1���������d(
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_30286z,-45<=@�=
6�3
)�&
input_1���������d(
p 

 
� ",�)
"�
tensor_0���������
� �
%__inference_model_layer_call_fn_30307o,-45<=@�=
6�3
)�&
input_1���������d(
p

 
� "!�
unknown����������
%__inference_model_layer_call_fn_30328o,-45<=@�=
6�3
)�&
input_1���������d(
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_30393�,-45<=C�@
� 
9�6
4
input_1)�&
input_1���������d("1�.
,
dense_5!�
dense_5���������