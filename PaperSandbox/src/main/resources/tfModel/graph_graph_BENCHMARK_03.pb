
D

input_nodePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
G
Q_target_nodePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
Risk_target_nodePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
L
Policy_target_nodePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

2Hidden_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"   d   *
dtype0*"
_class
loc:@Hidden_1/kernel

1Hidden_1/kernel/Initializer/truncated_normal/meanConst*
valueB 2        *
dtype0*"
_class
loc:@Hidden_1/kernel

3Hidden_1/kernel/Initializer/truncated_normal/stddevConst*
valueB 2Qß:bÍÃ?*
dtype0*"
_class
loc:@Hidden_1/kernel
Ö
<Hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal2Hidden_1/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed *"
_class
loc:@Hidden_1/kernel
×
0Hidden_1/kernel/Initializer/truncated_normal/mulMul<Hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal3Hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*"
_class
loc:@Hidden_1/kernel
Å
,Hidden_1/kernel/Initializer/truncated_normalAdd0Hidden_1/kernel/Initializer/truncated_normal/mul1Hidden_1/kernel/Initializer/truncated_normal/mean*
T0*"
_class
loc:@Hidden_1/kernel

Hidden_1/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape
:d*"
_class
loc:@Hidden_1/kernel
µ
Hidden_1/kernel/AssignAssignHidden_1/kernel,Hidden_1/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_1/kernel
^
Hidden_1/kernel/readIdentityHidden_1/kernel*
T0*"
_class
loc:@Hidden_1/kernel
v
Hidden_1/bias/Initializer/zerosConst*
valueBd2        *
dtype0* 
_class
loc:@Hidden_1/bias

Hidden_1/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:d* 
_class
loc:@Hidden_1/bias
¢
Hidden_1/bias/AssignAssignHidden_1/biasHidden_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_1/bias
X
Hidden_1/bias/readIdentityHidden_1/bias*
T0* 
_class
loc:@Hidden_1/bias
j
Hidden_1/MatMulMatMul
input_nodeHidden_1/kernel/read*
T0*
transpose_b( *
transpose_a( 
`
Hidden_1/BiasAddBiasAddHidden_1/MatMulHidden_1/bias/read*
T0*
data_formatNHWC
0
Hidden_1/ReluReluHidden_1/BiasAdd*
T0

2Hidden_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"d   
   *
dtype0*"
_class
loc:@Hidden_2/kernel

1Hidden_2/kernel/Initializer/truncated_normal/meanConst*
valueB 2        *
dtype0*"
_class
loc:@Hidden_2/kernel

3Hidden_2/kernel/Initializer/truncated_normal/stddevConst*
valueB 2¦IREÃ?*
dtype0*"
_class
loc:@Hidden_2/kernel
Ö
<Hidden_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal2Hidden_2/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed *"
_class
loc:@Hidden_2/kernel
×
0Hidden_2/kernel/Initializer/truncated_normal/mulMul<Hidden_2/kernel/Initializer/truncated_normal/TruncatedNormal3Hidden_2/kernel/Initializer/truncated_normal/stddev*
T0*"
_class
loc:@Hidden_2/kernel
Å
,Hidden_2/kernel/Initializer/truncated_normalAdd0Hidden_2/kernel/Initializer/truncated_normal/mul1Hidden_2/kernel/Initializer/truncated_normal/mean*
T0*"
_class
loc:@Hidden_2/kernel

Hidden_2/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape
:d
*"
_class
loc:@Hidden_2/kernel
µ
Hidden_2/kernel/AssignAssignHidden_2/kernel,Hidden_2/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_2/kernel
^
Hidden_2/kernel/readIdentityHidden_2/kernel*
T0*"
_class
loc:@Hidden_2/kernel
v
Hidden_2/bias/Initializer/zerosConst*
valueB
2        *
dtype0* 
_class
loc:@Hidden_2/bias

Hidden_2/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:
* 
_class
loc:@Hidden_2/bias
¢
Hidden_2/bias/AssignAssignHidden_2/biasHidden_2/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_2/bias
X
Hidden_2/bias/readIdentityHidden_2/bias*
T0* 
_class
loc:@Hidden_2/bias
m
Hidden_2/MatMulMatMulHidden_1/ReluHidden_2/kernel/read*
T0*
transpose_b( *
transpose_a( 
`
Hidden_2/BiasAddBiasAddHidden_2/MatMulHidden_2/bias/read*
T0*
data_formatNHWC
0
Hidden_2/ReluReluHidden_2/BiasAdd*
T0

2Hidden_3/kernel/Initializer/truncated_normal/shapeConst*
valueB"
   
   *
dtype0*"
_class
loc:@Hidden_3/kernel

1Hidden_3/kernel/Initializer/truncated_normal/meanConst*
valueB 2        *
dtype0*"
_class
loc:@Hidden_3/kernel

3Hidden_3/kernel/Initializer/truncated_normal/stddevConst*
valueB 2Â50s×?*
dtype0*"
_class
loc:@Hidden_3/kernel
Ö
<Hidden_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal2Hidden_3/kernel/Initializer/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed *"
_class
loc:@Hidden_3/kernel
×
0Hidden_3/kernel/Initializer/truncated_normal/mulMul<Hidden_3/kernel/Initializer/truncated_normal/TruncatedNormal3Hidden_3/kernel/Initializer/truncated_normal/stddev*
T0*"
_class
loc:@Hidden_3/kernel
Å
,Hidden_3/kernel/Initializer/truncated_normalAdd0Hidden_3/kernel/Initializer/truncated_normal/mul1Hidden_3/kernel/Initializer/truncated_normal/mean*
T0*"
_class
loc:@Hidden_3/kernel

Hidden_3/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape
:

*"
_class
loc:@Hidden_3/kernel
µ
Hidden_3/kernel/AssignAssignHidden_3/kernel,Hidden_3/kernel/Initializer/truncated_normal*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_3/kernel
^
Hidden_3/kernel/readIdentityHidden_3/kernel*
T0*"
_class
loc:@Hidden_3/kernel
v
Hidden_3/bias/Initializer/zerosConst*
valueB
2        *
dtype0* 
_class
loc:@Hidden_3/bias

Hidden_3/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:
* 
_class
loc:@Hidden_3/bias
¢
Hidden_3/bias/AssignAssignHidden_3/biasHidden_3/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_3/bias
X
Hidden_3/bias/readIdentityHidden_3/bias*
T0* 
_class
loc:@Hidden_3/bias
m
Hidden_3/MatMulMatMulHidden_2/ReluHidden_3/kernel/read*
T0*
transpose_b( *
transpose_a( 
`
Hidden_3/BiasAddBiasAddHidden_3/MatMulHidden_3/bias/read*
T0*
data_formatNHWC
0
Hidden_3/ReluReluHidden_3/BiasAdd*
T0

$policy_node/kernel/Initializer/zerosConst*!
valueB
2        *
dtype0*%
_class
loc:@policy_node/kernel

policy_node/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape
:
*%
_class
loc:@policy_node/kernel
¶
policy_node/kernel/AssignAssignpolicy_node/kernel$policy_node/kernel/Initializer/zeros*
T0*
use_locking(*
validate_shape(*%
_class
loc:@policy_node/kernel
g
policy_node/kernel/readIdentitypolicy_node/kernel*
T0*%
_class
loc:@policy_node/kernel
|
"policy_node/bias/Initializer/zerosConst*
valueB2        *
dtype0*#
_class
loc:@policy_node/bias

policy_node/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*#
_class
loc:@policy_node/bias
®
policy_node/bias/AssignAssignpolicy_node/bias"policy_node/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*#
_class
loc:@policy_node/bias
a
policy_node/bias/readIdentitypolicy_node/bias*
T0*#
_class
loc:@policy_node/bias
s
policy_node/MatMulMatMulHidden_3/Relupolicy_node/kernel/read*
T0*
transpose_b( *
transpose_a( 
i
policy_node/BiasAddBiasAddpolicy_node/MatMulpolicy_node/bias/read*
T0*
data_formatNHWC

"risk_node/kernel/Initializer/zerosConst*!
valueB
2        *
dtype0*#
_class
loc:@risk_node/kernel

risk_node/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape
:
*#
_class
loc:@risk_node/kernel
®
risk_node/kernel/AssignAssignrisk_node/kernel"risk_node/kernel/Initializer/zeros*
T0*
use_locking(*
validate_shape(*#
_class
loc:@risk_node/kernel
a
risk_node/kernel/readIdentityrisk_node/kernel*
T0*#
_class
loc:@risk_node/kernel
x
 risk_node/bias/Initializer/zerosConst*
valueB2        *
dtype0*!
_class
loc:@risk_node/bias

risk_node/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*!
_class
loc:@risk_node/bias
¦
risk_node/bias/AssignAssignrisk_node/bias risk_node/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@risk_node/bias
[
risk_node/bias/readIdentityrisk_node/bias*
T0*!
_class
loc:@risk_node/bias
o
risk_node/MatMulMatMulHidden_3/Relurisk_node/kernel/read*
T0*
transpose_b( *
transpose_a( 
c
risk_node/BiasAddBiasAddrisk_node/MatMulrisk_node/bias/read*
T0*
data_formatNHWC
8
risk_node/SigmoidSigmoidrisk_node/BiasAdd*
T0
z
q_node/kernel/Initializer/zerosConst*!
valueB
2        *
dtype0* 
_class
loc:@q_node/kernel

q_node/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape
:
* 
_class
loc:@q_node/kernel
¢
q_node/kernel/AssignAssignq_node/kernelq_node/kernel/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@q_node/kernel
X
q_node/kernel/readIdentityq_node/kernel*
T0* 
_class
loc:@q_node/kernel
r
q_node/bias/Initializer/zerosConst*
valueB2        *
dtype0*
_class
loc:@q_node/bias
{
q_node/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@q_node/bias

q_node/bias/AssignAssignq_node/biasq_node/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@q_node/bias
R
q_node/bias/readIdentityq_node/bias*
T0*
_class
loc:@q_node/bias
i
q_node/MatMulMatMulHidden_3/Reluq_node/kernel/read*
T0*
transpose_b( *
transpose_a( 
Z
q_node/BiasAddBiasAddq_node/MatMulq_node/bias/read*
T0*
data_formatNHWC
@
prediction_node_2/axisConst*
value	B :*
dtype0

prediction_node_2ConcatV2q_node/BiasAddrisk_node/Sigmoidpolicy_node/BiasAddprediction_node_2/axis*
T0*
N*

Tidx0
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
^
'softmax_cross_entropy_with_logits/ShapeShapepolicy_node/BiasAdd*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
`
)softmax_cross_entropy_with_logits/Shape_1Shapepolicy_node/BiasAdd*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0

%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*

axis *
T0*
N
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
Î
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
Index0*
T0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
Ý
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0

)softmax_cross_entropy_with_logits/ReshapeReshapepolicy_node/BiasAdd(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0
_
)softmax_cross_entropy_with_logits/Shape_2ShapePolicy_target_node*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*

axis *
T0*
N
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
valueB:*
dtype0
Ô
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
Index0*
T0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
å
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits/Reshape_1ReshapePolicy_target_node*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
£
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*

axis *
T0*
N
Ò
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
Index0*
T0

+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
2
subSubq_node/BiasAddQ_target_node*
T0

SquareSquaresub*
T0
I
Mean/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
R
MeanMeanSquareMean/reduction_indices*
	keep_dims( *
T0*

Tidx0
:
sub_1Subrisk_node/SigmoidRisk_target_node*
T0
"
Square_1Squaresub_1*
T0
K
Mean_1/reduction_indicesConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
X
Mean_1MeanSquare_1Mean_1/reduction_indices*
	keep_dims( *
T0*

Tidx0
!
addAddMeanMean_1*
T0
G
add_1Addadd+softmax_cross_entropy_with_logits/Reshape_2*
T0
8
gradients/ShapeShapeadd_1*
T0*
out_type0
D
gradients/grad_ys_0Const*
valueB 2      ð?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
A
gradients/add_1_grad/ShapeShapeadd*
T0*
out_type0
k
gradients/add_1_grad/Shape_1Shape+softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0

gradients/add_1_grad/SumSumgradients/Fill*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0

gradients/add_1_grad/Sum_1Sumgradients/Fill,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
¿
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
@
gradients/add_grad/ShapeShapeMean*
T0*
out_type0
D
gradients/add_grad/Shape_1ShapeMean_1*
T0*
out_type0

(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0

gradients/add_grad/SumSum-gradients/add_1_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0
 
gradients/add_grad/Sum_1Sum-gradients/add_1_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
±
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
·
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1

@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
×
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshape/gradients/add_1_grad/tuple/control_dependency_1@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0
C
gradients/Mean_grad/ShapeShapeSquare*
T0*
out_type0
p
gradients/Mean_grad/SizeConst*
value	B :*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/addAddMean/reduction_indicesgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
r
gradients/Mean_grad/Shape_1Const*
valueB *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
w
gradients/Mean_grad/range/startConst*
value	B : *
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
w
gradients/Mean_grad/range/deltaConst*
value	B :*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
¸
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*

Tidx0*,
_class"
 loc:@gradients/Mean_grad/Shape
v
gradients/Mean_grad/Fill/valueConst*
value	B :*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape
¦
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*

index_type0*,
_class"
 loc:@gradients/Mean_grad/Shape
Û
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*
N*,
_class"
 loc:@gradients/Mean_grad/Shape
u
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/ReshapeReshape+gradients/add_grad/tuple/control_dependency!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*
T0*

Tmultiples0
E
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0
C
gradients/Mean_grad/Shape_3ShapeMean*
T0*
out_type0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

DstT0*
Truncate( *

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
G
gradients/Mean_1_grad/ShapeShapeSquare_1*
T0*
out_type0
t
gradients/Mean_1_grad/SizeConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_1_grad/Shape

gradients/Mean_1_grad/addAddMean_1/reduction_indicesgradients/Mean_1_grad/Size*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape

gradients/Mean_1_grad/modFloorModgradients/Mean_1_grad/addgradients/Mean_1_grad/Size*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
v
gradients/Mean_1_grad/Shape_1Const*
valueB *
dtype0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
{
!gradients/Mean_1_grad/range/startConst*
value	B : *
dtype0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
{
!gradients/Mean_1_grad/range/deltaConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
Â
gradients/Mean_1_grad/rangeRange!gradients/Mean_1_grad/range/startgradients/Mean_1_grad/Size!gradients/Mean_1_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
z
 gradients/Mean_1_grad/Fill/valueConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
®
gradients/Mean_1_grad/FillFillgradients/Mean_1_grad/Shape_1 gradients/Mean_1_grad/Fill/value*
T0*

index_type0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
ç
#gradients/Mean_1_grad/DynamicStitchDynamicStitchgradients/Mean_1_grad/rangegradients/Mean_1_grad/modgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Fill*
T0*
N*.
_class$
" loc:@gradients/Mean_1_grad/Shape
y
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_1_grad/Shape
§
gradients/Mean_1_grad/MaximumMaximum#gradients/Mean_1_grad/DynamicStitchgradients/Mean_1_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape

gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_1_grad/Shape

gradients/Mean_1_grad/ReshapeReshape-gradients/add_grad/tuple/control_dependency_1#gradients/Mean_1_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/floordiv*
T0*

Tmultiples0
I
gradients/Mean_1_grad/Shape_2ShapeSquare_1*
T0*
out_type0
G
gradients/Mean_1_grad/Shape_3ShapeMean_1*
T0*
out_type0
I
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_3gradients/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0
K
!gradients/Mean_1_grad/Maximum_1/yConst*
value	B :*
dtype0
t
gradients/Mean_1_grad/Maximum_1Maximumgradients/Mean_1_grad/Prod_1!gradients/Mean_1_grad/Maximum_1/y*
T0
r
 gradients/Mean_1_grad/floordiv_1FloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum_1*
T0
l
gradients/Mean_1_grad/CastCast gradients/Mean_1_grad/floordiv_1*

DstT0*
Truncate( *

SrcT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
O
gradients/zeros_like	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
ã
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*
T0*

Tdim0
¦
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
ç
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*
T0*

Tdim0
»
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
¹
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
¡
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
§
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
j
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
valueB 2       @*
dtype0
K
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
c
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
T0
n
gradients/Square_1_grad/ConstConst^gradients/Mean_1_grad/truediv*
valueB 2       @*
dtype0
Q
gradients/Square_1_grad/MulMulsub_1gradients/Square_1_grad/Const*
T0
i
gradients/Square_1_grad/Mul_1Mulgradients/Mean_1_grad/truedivgradients/Square_1_grad/Mul*
T0
u
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapepolicy_node/BiasAdd*
T0*
out_type0
í
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
J
gradients/sub_grad/ShapeShapeq_node/BiasAdd*
T0*
out_type0
K
gradients/sub_grad/Shape_1ShapeQ_target_node*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0

gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0

gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
O
gradients/sub_1_grad/ShapeShaperisk_node/Sigmoid*
T0*
out_type0
P
gradients/sub_1_grad/Shape_1ShapeRisk_target_node*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0

gradients/sub_1_grad/SumSumgradients/Square_1_grad/Mul_1*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0

gradients/sub_1_grad/Sum_1Sumgradients/Square_1_grad/Mul_1,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
¿
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1

.gradients/policy_node/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0*
data_formatNHWC
¯
3gradients/policy_node/BiasAdd_grad/tuple/group_depsNoOp/^gradients/policy_node/BiasAdd_grad/BiasAddGradA^gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape

;gradients/policy_node/BiasAdd_grad/tuple/control_dependencyIdentity@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape4^gradients/policy_node/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape
û
=gradients/policy_node/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/policy_node/BiasAdd_grad/BiasAddGrad4^gradients/policy_node/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/policy_node/BiasAdd_grad/BiasAddGrad

)gradients/q_node/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/sub_grad/tuple/control_dependency*
T0*
data_formatNHWC

.gradients/q_node/BiasAdd_grad/tuple/group_depsNoOp*^gradients/q_node/BiasAdd_grad/BiasAddGrad,^gradients/sub_grad/tuple/control_dependency
Ø
6gradients/q_node/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/sub_grad/tuple/control_dependency/^gradients/q_node/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
ç
8gradients/q_node/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/q_node/BiasAdd_grad/BiasAddGrad/^gradients/q_node/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/q_node/BiasAdd_grad/BiasAddGrad

,gradients/risk_node/Sigmoid_grad/SigmoidGradSigmoidGradrisk_node/Sigmoid-gradients/sub_1_grad/tuple/control_dependency*
T0
·
(gradients/policy_node/MatMul_grad/MatMulMatMul;gradients/policy_node/BiasAdd_grad/tuple/control_dependencypolicy_node/kernel/read*
T0*
transpose_b(*
transpose_a( 
¯
*gradients/policy_node/MatMul_grad/MatMul_1MatMulHidden_3/Relu;gradients/policy_node/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(

2gradients/policy_node/MatMul_grad/tuple/group_depsNoOp)^gradients/policy_node/MatMul_grad/MatMul+^gradients/policy_node/MatMul_grad/MatMul_1
ë
:gradients/policy_node/MatMul_grad/tuple/control_dependencyIdentity(gradients/policy_node/MatMul_grad/MatMul3^gradients/policy_node/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/policy_node/MatMul_grad/MatMul
ñ
<gradients/policy_node/MatMul_grad/tuple/control_dependency_1Identity*gradients/policy_node/MatMul_grad/MatMul_13^gradients/policy_node/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/policy_node/MatMul_grad/MatMul_1
¨
#gradients/q_node/MatMul_grad/MatMulMatMul6gradients/q_node/BiasAdd_grad/tuple/control_dependencyq_node/kernel/read*
T0*
transpose_b(*
transpose_a( 
¥
%gradients/q_node/MatMul_grad/MatMul_1MatMulHidden_3/Relu6gradients/q_node/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(

-gradients/q_node/MatMul_grad/tuple/group_depsNoOp$^gradients/q_node/MatMul_grad/MatMul&^gradients/q_node/MatMul_grad/MatMul_1
×
5gradients/q_node/MatMul_grad/tuple/control_dependencyIdentity#gradients/q_node/MatMul_grad/MatMul.^gradients/q_node/MatMul_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/q_node/MatMul_grad/MatMul
Ý
7gradients/q_node/MatMul_grad/tuple/control_dependency_1Identity%gradients/q_node/MatMul_grad/MatMul_1.^gradients/q_node/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/q_node/MatMul_grad/MatMul_1

,gradients/risk_node/BiasAdd_grad/BiasAddGradBiasAddGrad,gradients/risk_node/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC

1gradients/risk_node/BiasAdd_grad/tuple/group_depsNoOp-^gradients/risk_node/BiasAdd_grad/BiasAddGrad-^gradients/risk_node/Sigmoid_grad/SigmoidGrad
ñ
9gradients/risk_node/BiasAdd_grad/tuple/control_dependencyIdentity,gradients/risk_node/Sigmoid_grad/SigmoidGrad2^gradients/risk_node/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/risk_node/Sigmoid_grad/SigmoidGrad
ó
;gradients/risk_node/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/risk_node/BiasAdd_grad/BiasAddGrad2^gradients/risk_node/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/risk_node/BiasAdd_grad/BiasAddGrad
±
&gradients/risk_node/MatMul_grad/MatMulMatMul9gradients/risk_node/BiasAdd_grad/tuple/control_dependencyrisk_node/kernel/read*
T0*
transpose_b(*
transpose_a( 
«
(gradients/risk_node/MatMul_grad/MatMul_1MatMulHidden_3/Relu9gradients/risk_node/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(

0gradients/risk_node/MatMul_grad/tuple/group_depsNoOp'^gradients/risk_node/MatMul_grad/MatMul)^gradients/risk_node/MatMul_grad/MatMul_1
ã
8gradients/risk_node/MatMul_grad/tuple/control_dependencyIdentity&gradients/risk_node/MatMul_grad/MatMul1^gradients/risk_node/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/risk_node/MatMul_grad/MatMul
é
:gradients/risk_node/MatMul_grad/tuple/control_dependency_1Identity(gradients/risk_node/MatMul_grad/MatMul_11^gradients/risk_node/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/risk_node/MatMul_grad/MatMul_1

gradients/AddNAddN:gradients/policy_node/MatMul_grad/tuple/control_dependency5gradients/q_node/MatMul_grad/tuple/control_dependency8gradients/risk_node/MatMul_grad/tuple/control_dependency*
T0*
N*;
_class1
/-loc:@gradients/policy_node/MatMul_grad/MatMul
Y
%gradients/Hidden_3/Relu_grad/ReluGradReluGradgradients/AddNHidden_3/Relu*
T0

+gradients/Hidden_3/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/Hidden_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC

0gradients/Hidden_3/BiasAdd_grad/tuple/group_depsNoOp,^gradients/Hidden_3/BiasAdd_grad/BiasAddGrad&^gradients/Hidden_3/Relu_grad/ReluGrad
á
8gradients/Hidden_3/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/Hidden_3/Relu_grad/ReluGrad1^gradients/Hidden_3/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/Hidden_3/Relu_grad/ReluGrad
ï
:gradients/Hidden_3/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/Hidden_3/BiasAdd_grad/BiasAddGrad1^gradients/Hidden_3/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Hidden_3/BiasAdd_grad/BiasAddGrad
®
%gradients/Hidden_3/MatMul_grad/MatMulMatMul8gradients/Hidden_3/BiasAdd_grad/tuple/control_dependencyHidden_3/kernel/read*
T0*
transpose_b(*
transpose_a( 
©
'gradients/Hidden_3/MatMul_grad/MatMul_1MatMulHidden_2/Relu8gradients/Hidden_3/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(

/gradients/Hidden_3/MatMul_grad/tuple/group_depsNoOp&^gradients/Hidden_3/MatMul_grad/MatMul(^gradients/Hidden_3/MatMul_grad/MatMul_1
ß
7gradients/Hidden_3/MatMul_grad/tuple/control_dependencyIdentity%gradients/Hidden_3/MatMul_grad/MatMul0^gradients/Hidden_3/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/Hidden_3/MatMul_grad/MatMul
å
9gradients/Hidden_3/MatMul_grad/tuple/control_dependency_1Identity'gradients/Hidden_3/MatMul_grad/MatMul_10^gradients/Hidden_3/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/Hidden_3/MatMul_grad/MatMul_1

%gradients/Hidden_2/Relu_grad/ReluGradReluGrad7gradients/Hidden_3/MatMul_grad/tuple/control_dependencyHidden_2/Relu*
T0

+gradients/Hidden_2/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/Hidden_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC

0gradients/Hidden_2/BiasAdd_grad/tuple/group_depsNoOp,^gradients/Hidden_2/BiasAdd_grad/BiasAddGrad&^gradients/Hidden_2/Relu_grad/ReluGrad
á
8gradients/Hidden_2/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/Hidden_2/Relu_grad/ReluGrad1^gradients/Hidden_2/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/Hidden_2/Relu_grad/ReluGrad
ï
:gradients/Hidden_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/Hidden_2/BiasAdd_grad/BiasAddGrad1^gradients/Hidden_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Hidden_2/BiasAdd_grad/BiasAddGrad
®
%gradients/Hidden_2/MatMul_grad/MatMulMatMul8gradients/Hidden_2/BiasAdd_grad/tuple/control_dependencyHidden_2/kernel/read*
T0*
transpose_b(*
transpose_a( 
©
'gradients/Hidden_2/MatMul_grad/MatMul_1MatMulHidden_1/Relu8gradients/Hidden_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(

/gradients/Hidden_2/MatMul_grad/tuple/group_depsNoOp&^gradients/Hidden_2/MatMul_grad/MatMul(^gradients/Hidden_2/MatMul_grad/MatMul_1
ß
7gradients/Hidden_2/MatMul_grad/tuple/control_dependencyIdentity%gradients/Hidden_2/MatMul_grad/MatMul0^gradients/Hidden_2/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/Hidden_2/MatMul_grad/MatMul
å
9gradients/Hidden_2/MatMul_grad/tuple/control_dependency_1Identity'gradients/Hidden_2/MatMul_grad/MatMul_10^gradients/Hidden_2/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/Hidden_2/MatMul_grad/MatMul_1

%gradients/Hidden_1/Relu_grad/ReluGradReluGrad7gradients/Hidden_2/MatMul_grad/tuple/control_dependencyHidden_1/Relu*
T0

+gradients/Hidden_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/Hidden_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC

0gradients/Hidden_1/BiasAdd_grad/tuple/group_depsNoOp,^gradients/Hidden_1/BiasAdd_grad/BiasAddGrad&^gradients/Hidden_1/Relu_grad/ReluGrad
á
8gradients/Hidden_1/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/Hidden_1/Relu_grad/ReluGrad1^gradients/Hidden_1/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/Hidden_1/Relu_grad/ReluGrad
ï
:gradients/Hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/Hidden_1/BiasAdd_grad/BiasAddGrad1^gradients/Hidden_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Hidden_1/BiasAdd_grad/BiasAddGrad
®
%gradients/Hidden_1/MatMul_grad/MatMulMatMul8gradients/Hidden_1/BiasAdd_grad/tuple/control_dependencyHidden_1/kernel/read*
T0*
transpose_b(*
transpose_a( 
¦
'gradients/Hidden_1/MatMul_grad/MatMul_1MatMul
input_node8gradients/Hidden_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(

/gradients/Hidden_1/MatMul_grad/tuple/group_depsNoOp&^gradients/Hidden_1/MatMul_grad/MatMul(^gradients/Hidden_1/MatMul_grad/MatMul_1
ß
7gradients/Hidden_1/MatMul_grad/tuple/control_dependencyIdentity%gradients/Hidden_1/MatMul_grad/MatMul0^gradients/Hidden_1/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/Hidden_1/MatMul_grad/MatMul
å
9gradients/Hidden_1/MatMul_grad/tuple/control_dependency_1Identity'gradients/Hidden_1/MatMul_grad/MatMul_10^gradients/Hidden_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/Hidden_1/MatMul_grad/MatMul_1
h
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0* 
_class
loc:@Hidden_1/bias
y
beta1_power
VariableV2*
dtype0*
shared_name *
	container *
shape: * 
_class
loc:@Hidden_1/bias

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_1/bias
T
beta1_power/readIdentitybeta1_power*
T0* 
_class
loc:@Hidden_1/bias
h
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0* 
_class
loc:@Hidden_1/bias
y
beta2_power
VariableV2*
dtype0*
shared_name *
	container *
shape: * 
_class
loc:@Hidden_1/bias

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_1/bias
T
beta2_power/readIdentitybeta2_power*
T0* 
_class
loc:@Hidden_1/bias

&Hidden_1/kernel/Adam/Initializer/zerosConst*!
valueBd2        *
dtype0*"
_class
loc:@Hidden_1/kernel

Hidden_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape
:d*"
_class
loc:@Hidden_1/kernel
¹
Hidden_1/kernel/Adam/AssignAssignHidden_1/kernel/Adam&Hidden_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_1/kernel
h
Hidden_1/kernel/Adam/readIdentityHidden_1/kernel/Adam*
T0*"
_class
loc:@Hidden_1/kernel

(Hidden_1/kernel/Adam_1/Initializer/zerosConst*!
valueBd2        *
dtype0*"
_class
loc:@Hidden_1/kernel

Hidden_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape
:d*"
_class
loc:@Hidden_1/kernel
¿
Hidden_1/kernel/Adam_1/AssignAssignHidden_1/kernel/Adam_1(Hidden_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_1/kernel
l
Hidden_1/kernel/Adam_1/readIdentityHidden_1/kernel/Adam_1*
T0*"
_class
loc:@Hidden_1/kernel
{
$Hidden_1/bias/Adam/Initializer/zerosConst*
valueBd2        *
dtype0* 
_class
loc:@Hidden_1/bias

Hidden_1/bias/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape:d* 
_class
loc:@Hidden_1/bias
±
Hidden_1/bias/Adam/AssignAssignHidden_1/bias/Adam$Hidden_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_1/bias
b
Hidden_1/bias/Adam/readIdentityHidden_1/bias/Adam*
T0* 
_class
loc:@Hidden_1/bias
}
&Hidden_1/bias/Adam_1/Initializer/zerosConst*
valueBd2        *
dtype0* 
_class
loc:@Hidden_1/bias

Hidden_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape:d* 
_class
loc:@Hidden_1/bias
·
Hidden_1/bias/Adam_1/AssignAssignHidden_1/bias/Adam_1&Hidden_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_1/bias
f
Hidden_1/bias/Adam_1/readIdentityHidden_1/bias/Adam_1*
T0* 
_class
loc:@Hidden_1/bias

6Hidden_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"d   
   *
dtype0*"
_class
loc:@Hidden_2/kernel

,Hidden_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB 2        *
dtype0*"
_class
loc:@Hidden_2/kernel
Ó
&Hidden_2/kernel/Adam/Initializer/zerosFill6Hidden_2/kernel/Adam/Initializer/zeros/shape_as_tensor,Hidden_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@Hidden_2/kernel

Hidden_2/kernel/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape
:d
*"
_class
loc:@Hidden_2/kernel
¹
Hidden_2/kernel/Adam/AssignAssignHidden_2/kernel/Adam&Hidden_2/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_2/kernel
h
Hidden_2/kernel/Adam/readIdentityHidden_2/kernel/Adam*
T0*"
_class
loc:@Hidden_2/kernel

8Hidden_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"d   
   *
dtype0*"
_class
loc:@Hidden_2/kernel

.Hidden_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB 2        *
dtype0*"
_class
loc:@Hidden_2/kernel
Ù
(Hidden_2/kernel/Adam_1/Initializer/zerosFill8Hidden_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor.Hidden_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@Hidden_2/kernel

Hidden_2/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape
:d
*"
_class
loc:@Hidden_2/kernel
¿
Hidden_2/kernel/Adam_1/AssignAssignHidden_2/kernel/Adam_1(Hidden_2/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_2/kernel
l
Hidden_2/kernel/Adam_1/readIdentityHidden_2/kernel/Adam_1*
T0*"
_class
loc:@Hidden_2/kernel
{
$Hidden_2/bias/Adam/Initializer/zerosConst*
valueB
2        *
dtype0* 
_class
loc:@Hidden_2/bias

Hidden_2/bias/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape:
* 
_class
loc:@Hidden_2/bias
±
Hidden_2/bias/Adam/AssignAssignHidden_2/bias/Adam$Hidden_2/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_2/bias
b
Hidden_2/bias/Adam/readIdentityHidden_2/bias/Adam*
T0* 
_class
loc:@Hidden_2/bias
}
&Hidden_2/bias/Adam_1/Initializer/zerosConst*
valueB
2        *
dtype0* 
_class
loc:@Hidden_2/bias

Hidden_2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape:
* 
_class
loc:@Hidden_2/bias
·
Hidden_2/bias/Adam_1/AssignAssignHidden_2/bias/Adam_1&Hidden_2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_2/bias
f
Hidden_2/bias/Adam_1/readIdentityHidden_2/bias/Adam_1*
T0* 
_class
loc:@Hidden_2/bias

&Hidden_3/kernel/Adam/Initializer/zerosConst*!
valueB

2        *
dtype0*"
_class
loc:@Hidden_3/kernel

Hidden_3/kernel/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape
:

*"
_class
loc:@Hidden_3/kernel
¹
Hidden_3/kernel/Adam/AssignAssignHidden_3/kernel/Adam&Hidden_3/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_3/kernel
h
Hidden_3/kernel/Adam/readIdentityHidden_3/kernel/Adam*
T0*"
_class
loc:@Hidden_3/kernel

(Hidden_3/kernel/Adam_1/Initializer/zerosConst*!
valueB

2        *
dtype0*"
_class
loc:@Hidden_3/kernel

Hidden_3/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape
:

*"
_class
loc:@Hidden_3/kernel
¿
Hidden_3/kernel/Adam_1/AssignAssignHidden_3/kernel/Adam_1(Hidden_3/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@Hidden_3/kernel
l
Hidden_3/kernel/Adam_1/readIdentityHidden_3/kernel/Adam_1*
T0*"
_class
loc:@Hidden_3/kernel
{
$Hidden_3/bias/Adam/Initializer/zerosConst*
valueB
2        *
dtype0* 
_class
loc:@Hidden_3/bias

Hidden_3/bias/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape:
* 
_class
loc:@Hidden_3/bias
±
Hidden_3/bias/Adam/AssignAssignHidden_3/bias/Adam$Hidden_3/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_3/bias
b
Hidden_3/bias/Adam/readIdentityHidden_3/bias/Adam*
T0* 
_class
loc:@Hidden_3/bias
}
&Hidden_3/bias/Adam_1/Initializer/zerosConst*
valueB
2        *
dtype0* 
_class
loc:@Hidden_3/bias

Hidden_3/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape:
* 
_class
loc:@Hidden_3/bias
·
Hidden_3/bias/Adam_1/AssignAssignHidden_3/bias/Adam_1&Hidden_3/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@Hidden_3/bias
f
Hidden_3/bias/Adam_1/readIdentityHidden_3/bias/Adam_1*
T0* 
_class
loc:@Hidden_3/bias

)policy_node/kernel/Adam/Initializer/zerosConst*!
valueB
2        *
dtype0*%
_class
loc:@policy_node/kernel

policy_node/kernel/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape
:
*%
_class
loc:@policy_node/kernel
Å
policy_node/kernel/Adam/AssignAssignpolicy_node/kernel/Adam)policy_node/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*%
_class
loc:@policy_node/kernel
q
policy_node/kernel/Adam/readIdentitypolicy_node/kernel/Adam*
T0*%
_class
loc:@policy_node/kernel

+policy_node/kernel/Adam_1/Initializer/zerosConst*!
valueB
2        *
dtype0*%
_class
loc:@policy_node/kernel

policy_node/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape
:
*%
_class
loc:@policy_node/kernel
Ë
 policy_node/kernel/Adam_1/AssignAssignpolicy_node/kernel/Adam_1+policy_node/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*%
_class
loc:@policy_node/kernel
u
policy_node/kernel/Adam_1/readIdentitypolicy_node/kernel/Adam_1*
T0*%
_class
loc:@policy_node/kernel

'policy_node/bias/Adam/Initializer/zerosConst*
valueB2        *
dtype0*#
_class
loc:@policy_node/bias

policy_node/bias/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape:*#
_class
loc:@policy_node/bias
½
policy_node/bias/Adam/AssignAssignpolicy_node/bias/Adam'policy_node/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*#
_class
loc:@policy_node/bias
k
policy_node/bias/Adam/readIdentitypolicy_node/bias/Adam*
T0*#
_class
loc:@policy_node/bias

)policy_node/bias/Adam_1/Initializer/zerosConst*
valueB2        *
dtype0*#
_class
loc:@policy_node/bias

policy_node/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape:*#
_class
loc:@policy_node/bias
Ã
policy_node/bias/Adam_1/AssignAssignpolicy_node/bias/Adam_1)policy_node/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*#
_class
loc:@policy_node/bias
o
policy_node/bias/Adam_1/readIdentitypolicy_node/bias/Adam_1*
T0*#
_class
loc:@policy_node/bias

'risk_node/kernel/Adam/Initializer/zerosConst*!
valueB
2        *
dtype0*#
_class
loc:@risk_node/kernel

risk_node/kernel/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape
:
*#
_class
loc:@risk_node/kernel
½
risk_node/kernel/Adam/AssignAssignrisk_node/kernel/Adam'risk_node/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*#
_class
loc:@risk_node/kernel
k
risk_node/kernel/Adam/readIdentityrisk_node/kernel/Adam*
T0*#
_class
loc:@risk_node/kernel

)risk_node/kernel/Adam_1/Initializer/zerosConst*!
valueB
2        *
dtype0*#
_class
loc:@risk_node/kernel

risk_node/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape
:
*#
_class
loc:@risk_node/kernel
Ã
risk_node/kernel/Adam_1/AssignAssignrisk_node/kernel/Adam_1)risk_node/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*#
_class
loc:@risk_node/kernel
o
risk_node/kernel/Adam_1/readIdentityrisk_node/kernel/Adam_1*
T0*#
_class
loc:@risk_node/kernel
}
%risk_node/bias/Adam/Initializer/zerosConst*
valueB2        *
dtype0*!
_class
loc:@risk_node/bias

risk_node/bias/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape:*!
_class
loc:@risk_node/bias
µ
risk_node/bias/Adam/AssignAssignrisk_node/bias/Adam%risk_node/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@risk_node/bias
e
risk_node/bias/Adam/readIdentityrisk_node/bias/Adam*
T0*!
_class
loc:@risk_node/bias

'risk_node/bias/Adam_1/Initializer/zerosConst*
valueB2        *
dtype0*!
_class
loc:@risk_node/bias

risk_node/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape:*!
_class
loc:@risk_node/bias
»
risk_node/bias/Adam_1/AssignAssignrisk_node/bias/Adam_1'risk_node/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@risk_node/bias
i
risk_node/bias/Adam_1/readIdentityrisk_node/bias/Adam_1*
T0*!
_class
loc:@risk_node/bias

$q_node/kernel/Adam/Initializer/zerosConst*!
valueB
2        *
dtype0* 
_class
loc:@q_node/kernel

q_node/kernel/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape
:
* 
_class
loc:@q_node/kernel
±
q_node/kernel/Adam/AssignAssignq_node/kernel/Adam$q_node/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@q_node/kernel
b
q_node/kernel/Adam/readIdentityq_node/kernel/Adam*
T0* 
_class
loc:@q_node/kernel

&q_node/kernel/Adam_1/Initializer/zerosConst*!
valueB
2        *
dtype0* 
_class
loc:@q_node/kernel

q_node/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape
:
* 
_class
loc:@q_node/kernel
·
q_node/kernel/Adam_1/AssignAssignq_node/kernel/Adam_1&q_node/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@q_node/kernel
f
q_node/kernel/Adam_1/readIdentityq_node/kernel/Adam_1*
T0* 
_class
loc:@q_node/kernel
w
"q_node/bias/Adam/Initializer/zerosConst*
valueB2        *
dtype0*
_class
loc:@q_node/bias

q_node/bias/Adam
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@q_node/bias
©
q_node/bias/Adam/AssignAssignq_node/bias/Adam"q_node/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@q_node/bias
\
q_node/bias/Adam/readIdentityq_node/bias/Adam*
T0*
_class
loc:@q_node/bias
y
$q_node/bias/Adam_1/Initializer/zerosConst*
valueB2        *
dtype0*
_class
loc:@q_node/bias

q_node/bias/Adam_1
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@q_node/bias
¯
q_node/bias/Adam_1/AssignAssignq_node/bias/Adam_1$q_node/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@q_node/bias
`
q_node/bias/Adam_1/readIdentityq_node/bias/Adam_1*
T0*
_class
loc:@q_node/bias
E
train_node/learning_rateConst*
valueB
 *·Ñ8*
dtype0
=
train_node/beta1Const*
valueB
 *fff?*
dtype0
=
train_node/beta2Const*
valueB
 *w¾?*
dtype0
?
train_node/epsilonConst*
valueB
 *wÌ+2*
dtype0

&train_node/update_Hidden_1/kernel/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_1/kernel

(train_node/update_Hidden_1/kernel/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_1/kernel

(train_node/update_Hidden_1/kernel/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_1/kernel

(train_node/update_Hidden_1/kernel/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_1/kernel

(train_node/update_Hidden_1/kernel/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_1/kernel

(train_node/update_Hidden_1/kernel/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_1/kernel

+train_node/update_Hidden_1/kernel/ApplyAdam	ApplyAdamHidden_1/kernelHidden_1/kernel/AdamHidden_1/kernel/Adam_1&train_node/update_Hidden_1/kernel/Cast(train_node/update_Hidden_1/kernel/Cast_1(train_node/update_Hidden_1/kernel/Cast_2(train_node/update_Hidden_1/kernel/Cast_3(train_node/update_Hidden_1/kernel/Cast_4(train_node/update_Hidden_1/kernel/Cast_59gradients/Hidden_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@Hidden_1/kernel

$train_node/update_Hidden_1/bias/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_1/bias

&train_node/update_Hidden_1/bias/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_1/bias

&train_node/update_Hidden_1/bias/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_1/bias

&train_node/update_Hidden_1/bias/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_1/bias

&train_node/update_Hidden_1/bias/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_1/bias

&train_node/update_Hidden_1/bias/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_1/bias
ë
)train_node/update_Hidden_1/bias/ApplyAdam	ApplyAdamHidden_1/biasHidden_1/bias/AdamHidden_1/bias/Adam_1$train_node/update_Hidden_1/bias/Cast&train_node/update_Hidden_1/bias/Cast_1&train_node/update_Hidden_1/bias/Cast_2&train_node/update_Hidden_1/bias/Cast_3&train_node/update_Hidden_1/bias/Cast_4&train_node/update_Hidden_1/bias/Cast_5:gradients/Hidden_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@Hidden_1/bias

&train_node/update_Hidden_2/kernel/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_2/kernel

(train_node/update_Hidden_2/kernel/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_2/kernel

(train_node/update_Hidden_2/kernel/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_2/kernel

(train_node/update_Hidden_2/kernel/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_2/kernel

(train_node/update_Hidden_2/kernel/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_2/kernel

(train_node/update_Hidden_2/kernel/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_2/kernel

+train_node/update_Hidden_2/kernel/ApplyAdam	ApplyAdamHidden_2/kernelHidden_2/kernel/AdamHidden_2/kernel/Adam_1&train_node/update_Hidden_2/kernel/Cast(train_node/update_Hidden_2/kernel/Cast_1(train_node/update_Hidden_2/kernel/Cast_2(train_node/update_Hidden_2/kernel/Cast_3(train_node/update_Hidden_2/kernel/Cast_4(train_node/update_Hidden_2/kernel/Cast_59gradients/Hidden_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@Hidden_2/kernel

$train_node/update_Hidden_2/bias/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_2/bias

&train_node/update_Hidden_2/bias/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_2/bias

&train_node/update_Hidden_2/bias/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_2/bias

&train_node/update_Hidden_2/bias/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_2/bias

&train_node/update_Hidden_2/bias/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_2/bias

&train_node/update_Hidden_2/bias/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_2/bias
ë
)train_node/update_Hidden_2/bias/ApplyAdam	ApplyAdamHidden_2/biasHidden_2/bias/AdamHidden_2/bias/Adam_1$train_node/update_Hidden_2/bias/Cast&train_node/update_Hidden_2/bias/Cast_1&train_node/update_Hidden_2/bias/Cast_2&train_node/update_Hidden_2/bias/Cast_3&train_node/update_Hidden_2/bias/Cast_4&train_node/update_Hidden_2/bias/Cast_5:gradients/Hidden_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@Hidden_2/bias

&train_node/update_Hidden_3/kernel/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_3/kernel

(train_node/update_Hidden_3/kernel/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_3/kernel

(train_node/update_Hidden_3/kernel/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_3/kernel

(train_node/update_Hidden_3/kernel/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_3/kernel

(train_node/update_Hidden_3/kernel/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_3/kernel

(train_node/update_Hidden_3/kernel/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*"
_class
loc:@Hidden_3/kernel

+train_node/update_Hidden_3/kernel/ApplyAdam	ApplyAdamHidden_3/kernelHidden_3/kernel/AdamHidden_3/kernel/Adam_1&train_node/update_Hidden_3/kernel/Cast(train_node/update_Hidden_3/kernel/Cast_1(train_node/update_Hidden_3/kernel/Cast_2(train_node/update_Hidden_3/kernel/Cast_3(train_node/update_Hidden_3/kernel/Cast_4(train_node/update_Hidden_3/kernel/Cast_59gradients/Hidden_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@Hidden_3/kernel

$train_node/update_Hidden_3/bias/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_3/bias

&train_node/update_Hidden_3/bias/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_3/bias

&train_node/update_Hidden_3/bias/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_3/bias

&train_node/update_Hidden_3/bias/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_3/bias

&train_node/update_Hidden_3/bias/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_3/bias

&train_node/update_Hidden_3/bias/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@Hidden_3/bias
ë
)train_node/update_Hidden_3/bias/ApplyAdam	ApplyAdamHidden_3/biasHidden_3/bias/AdamHidden_3/bias/Adam_1$train_node/update_Hidden_3/bias/Cast&train_node/update_Hidden_3/bias/Cast_1&train_node/update_Hidden_3/bias/Cast_2&train_node/update_Hidden_3/bias/Cast_3&train_node/update_Hidden_3/bias/Cast_4&train_node/update_Hidden_3/bias/Cast_5:gradients/Hidden_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@Hidden_3/bias

)train_node/update_policy_node/kernel/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*%
_class
loc:@policy_node/kernel

+train_node/update_policy_node/kernel/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*%
_class
loc:@policy_node/kernel

+train_node/update_policy_node/kernel/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*%
_class
loc:@policy_node/kernel

+train_node/update_policy_node/kernel/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*%
_class
loc:@policy_node/kernel

+train_node/update_policy_node/kernel/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*%
_class
loc:@policy_node/kernel

+train_node/update_policy_node/kernel/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*%
_class
loc:@policy_node/kernel
¤
.train_node/update_policy_node/kernel/ApplyAdam	ApplyAdampolicy_node/kernelpolicy_node/kernel/Adampolicy_node/kernel/Adam_1)train_node/update_policy_node/kernel/Cast+train_node/update_policy_node/kernel/Cast_1+train_node/update_policy_node/kernel/Cast_2+train_node/update_policy_node/kernel/Cast_3+train_node/update_policy_node/kernel/Cast_4+train_node/update_policy_node/kernel/Cast_5<gradients/policy_node/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *%
_class
loc:@policy_node/kernel

'train_node/update_policy_node/bias/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@policy_node/bias

)train_node/update_policy_node/bias/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@policy_node/bias

)train_node/update_policy_node/bias/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@policy_node/bias

)train_node/update_policy_node/bias/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@policy_node/bias

)train_node/update_policy_node/bias/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@policy_node/bias

)train_node/update_policy_node/bias/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@policy_node/bias

,train_node/update_policy_node/bias/ApplyAdam	ApplyAdampolicy_node/biaspolicy_node/bias/Adampolicy_node/bias/Adam_1'train_node/update_policy_node/bias/Cast)train_node/update_policy_node/bias/Cast_1)train_node/update_policy_node/bias/Cast_2)train_node/update_policy_node/bias/Cast_3)train_node/update_policy_node/bias/Cast_4)train_node/update_policy_node/bias/Cast_5=gradients/policy_node/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@policy_node/bias

'train_node/update_risk_node/kernel/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@risk_node/kernel

)train_node/update_risk_node/kernel/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@risk_node/kernel

)train_node/update_risk_node/kernel/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@risk_node/kernel

)train_node/update_risk_node/kernel/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@risk_node/kernel

)train_node/update_risk_node/kernel/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@risk_node/kernel

)train_node/update_risk_node/kernel/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*#
_class
loc:@risk_node/kernel

,train_node/update_risk_node/kernel/ApplyAdam	ApplyAdamrisk_node/kernelrisk_node/kernel/Adamrisk_node/kernel/Adam_1'train_node/update_risk_node/kernel/Cast)train_node/update_risk_node/kernel/Cast_1)train_node/update_risk_node/kernel/Cast_2)train_node/update_risk_node/kernel/Cast_3)train_node/update_risk_node/kernel/Cast_4)train_node/update_risk_node/kernel/Cast_5:gradients/risk_node/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *#
_class
loc:@risk_node/kernel

%train_node/update_risk_node/bias/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*!
_class
loc:@risk_node/bias

'train_node/update_risk_node/bias/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*!
_class
loc:@risk_node/bias

'train_node/update_risk_node/bias/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*!
_class
loc:@risk_node/bias

'train_node/update_risk_node/bias/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*!
_class
loc:@risk_node/bias

'train_node/update_risk_node/bias/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*!
_class
loc:@risk_node/bias

'train_node/update_risk_node/bias/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*!
_class
loc:@risk_node/bias
÷
*train_node/update_risk_node/bias/ApplyAdam	ApplyAdamrisk_node/biasrisk_node/bias/Adamrisk_node/bias/Adam_1%train_node/update_risk_node/bias/Cast'train_node/update_risk_node/bias/Cast_1'train_node/update_risk_node/bias/Cast_2'train_node/update_risk_node/bias/Cast_3'train_node/update_risk_node/bias/Cast_4'train_node/update_risk_node/bias/Cast_5;gradients/risk_node/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@risk_node/bias

$train_node/update_q_node/kernel/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@q_node/kernel

&train_node/update_q_node/kernel/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@q_node/kernel

&train_node/update_q_node/kernel/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@q_node/kernel

&train_node/update_q_node/kernel/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@q_node/kernel

&train_node/update_q_node/kernel/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@q_node/kernel

&train_node/update_q_node/kernel/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0* 
_class
loc:@q_node/kernel
è
)train_node/update_q_node/kernel/ApplyAdam	ApplyAdamq_node/kernelq_node/kernel/Adamq_node/kernel/Adam_1$train_node/update_q_node/kernel/Cast&train_node/update_q_node/kernel/Cast_1&train_node/update_q_node/kernel/Cast_2&train_node/update_q_node/kernel/Cast_3&train_node/update_q_node/kernel/Cast_4&train_node/update_q_node/kernel/Cast_57gradients/q_node/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@q_node/kernel

"train_node/update_q_node/bias/CastCastbeta1_power/read*

DstT0*
Truncate( *

SrcT0*
_class
loc:@q_node/bias

$train_node/update_q_node/bias/Cast_1Castbeta2_power/read*

DstT0*
Truncate( *

SrcT0*
_class
loc:@q_node/bias

$train_node/update_q_node/bias/Cast_2Casttrain_node/learning_rate*

DstT0*
Truncate( *

SrcT0*
_class
loc:@q_node/bias

$train_node/update_q_node/bias/Cast_3Casttrain_node/beta1*

DstT0*
Truncate( *

SrcT0*
_class
loc:@q_node/bias

$train_node/update_q_node/bias/Cast_4Casttrain_node/beta2*

DstT0*
Truncate( *

SrcT0*
_class
loc:@q_node/bias

$train_node/update_q_node/bias/Cast_5Casttrain_node/epsilon*

DstT0*
Truncate( *

SrcT0*
_class
loc:@q_node/bias
Ó
'train_node/update_q_node/bias/ApplyAdam	ApplyAdamq_node/biasq_node/bias/Adamq_node/bias/Adam_1"train_node/update_q_node/bias/Cast$train_node/update_q_node/bias/Cast_1$train_node/update_q_node/bias/Cast_2$train_node/update_q_node/bias/Cast_3$train_node/update_q_node/bias/Cast_4$train_node/update_q_node/bias/Cast_58gradients/q_node/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@q_node/bias

train_node/mulMulbeta1_power/readtrain_node/beta1*^train_node/update_Hidden_1/bias/ApplyAdam,^train_node/update_Hidden_1/kernel/ApplyAdam*^train_node/update_Hidden_2/bias/ApplyAdam,^train_node/update_Hidden_2/kernel/ApplyAdam*^train_node/update_Hidden_3/bias/ApplyAdam,^train_node/update_Hidden_3/kernel/ApplyAdam-^train_node/update_policy_node/bias/ApplyAdam/^train_node/update_policy_node/kernel/ApplyAdam(^train_node/update_q_node/bias/ApplyAdam*^train_node/update_q_node/kernel/ApplyAdam+^train_node/update_risk_node/bias/ApplyAdam-^train_node/update_risk_node/kernel/ApplyAdam*
T0* 
_class
loc:@Hidden_1/bias

train_node/AssignAssignbeta1_powertrain_node/mul*
T0*
use_locking( *
validate_shape(* 
_class
loc:@Hidden_1/bias

train_node/mul_1Mulbeta2_power/readtrain_node/beta2*^train_node/update_Hidden_1/bias/ApplyAdam,^train_node/update_Hidden_1/kernel/ApplyAdam*^train_node/update_Hidden_2/bias/ApplyAdam,^train_node/update_Hidden_2/kernel/ApplyAdam*^train_node/update_Hidden_3/bias/ApplyAdam,^train_node/update_Hidden_3/kernel/ApplyAdam-^train_node/update_policy_node/bias/ApplyAdam/^train_node/update_policy_node/kernel/ApplyAdam(^train_node/update_q_node/bias/ApplyAdam*^train_node/update_q_node/kernel/ApplyAdam+^train_node/update_risk_node/bias/ApplyAdam-^train_node/update_risk_node/kernel/ApplyAdam*
T0* 
_class
loc:@Hidden_1/bias

train_node/Assign_1Assignbeta2_powertrain_node/mul_1*
T0*
use_locking( *
validate_shape(* 
_class
loc:@Hidden_1/bias
Ü

train_nodeNoOp^train_node/Assign^train_node/Assign_1*^train_node/update_Hidden_1/bias/ApplyAdam,^train_node/update_Hidden_1/kernel/ApplyAdam*^train_node/update_Hidden_2/bias/ApplyAdam,^train_node/update_Hidden_2/kernel/ApplyAdam*^train_node/update_Hidden_3/bias/ApplyAdam,^train_node/update_Hidden_3/kernel/ApplyAdam-^train_node/update_policy_node/bias/ApplyAdam/^train_node/update_policy_node/kernel/ApplyAdam(^train_node/update_q_node/bias/ApplyAdam*^train_node/update_q_node/kernel/ApplyAdam+^train_node/update_risk_node/bias/ApplyAdam-^train_node/update_risk_node/kernel/ApplyAdam
²
initNoOp^Hidden_1/bias/Adam/Assign^Hidden_1/bias/Adam_1/Assign^Hidden_1/bias/Assign^Hidden_1/kernel/Adam/Assign^Hidden_1/kernel/Adam_1/Assign^Hidden_1/kernel/Assign^Hidden_2/bias/Adam/Assign^Hidden_2/bias/Adam_1/Assign^Hidden_2/bias/Assign^Hidden_2/kernel/Adam/Assign^Hidden_2/kernel/Adam_1/Assign^Hidden_2/kernel/Assign^Hidden_3/bias/Adam/Assign^Hidden_3/bias/Adam_1/Assign^Hidden_3/bias/Assign^Hidden_3/kernel/Adam/Assign^Hidden_3/kernel/Adam_1/Assign^Hidden_3/kernel/Assign^beta1_power/Assign^beta2_power/Assign^policy_node/bias/Adam/Assign^policy_node/bias/Adam_1/Assign^policy_node/bias/Assign^policy_node/kernel/Adam/Assign!^policy_node/kernel/Adam_1/Assign^policy_node/kernel/Assign^q_node/bias/Adam/Assign^q_node/bias/Adam_1/Assign^q_node/bias/Assign^q_node/kernel/Adam/Assign^q_node/kernel/Adam_1/Assign^q_node/kernel/Assign^risk_node/bias/Adam/Assign^risk_node/bias/Adam_1/Assign^risk_node/bias/Assign^risk_node/kernel/Adam/Assign^risk_node/kernel/Adam_1/Assign^risk_node/kernel/Assign"