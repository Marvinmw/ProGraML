
�-
Qcluster_0__XlaCompiledKernel_true__XlaNumConstantArgs_3__XlaNumResourceArgs_0_.76Qcluster_0__XlaCompiledKernel_true__XlaNumConstantArgs_3__XlaNumResourceArgs_0_.76�
max_float_.13
x.14	parameter* : � 
y.15	parameter* : H�'

maximum.16maximum* : ��"$
* 
* * x.14y.15(0�
add_float_.23
x.24	parameter* : � 
y.25	parameter* : H�
add.26add* : ��"$
* 
* * x.24y.25(0�
'gradients_Softmax_grad_Sum-reduction.49
x.50	parameter* : �2 
y.51	parameter* : H�3
add.52add* : �4�23"$
* 
* * x.50y.51(104�
%gradients_add_grad_Sum_1-reduction.63
x.64	parameter* : �@ 
y.65	parameter* : H�A
add.66add* : �B�@A"$
* 
* * x.64y.65(?0B�%
Qcluster_0__XlaCompiledKernel_true__XlaNumConstantArgs_3__XlaNumResourceArgs_0_.76?
arg2.3	parameterd�*
  2  :
XLA_ArgsH��
 2
	reshape.7reshaped�*
  2  : ��=
arg0.1	parameter�
*
  2  :
XLA_Args��
 2
	reshape.5reshape�
*
  2  : ��J
dot.9dotd
*
  2  :
MatMulMatMul�
 �	��
  ;
arg1.2	parameter
*
  2 :
XLA_ArgsH��
 .
	reshape.6reshape
*
  2 : ��C
broadcast.10	broadcastd
*
  2  :

Addaddr�
�5
add.11addd
*
  2  :

Addadd��	
F
constant.12constant* :
SoftmaxSoftmaxB
* B  ���G
	reduce.17reduced*
  2 :
SoftmaxSoftmaxr���K
broadcast.18	broadcastd
*
  2  :
SoftmaxSoftmaxr ��G
subtract.19subtractd
*
  2  :
SoftmaxSoftmax��L
exponential.20exponentiald
*
  2  :
SoftmaxSoftmax��D

convert.21convertd
*
  2  :
SoftmaxSoftmax��F
constant.22constant* :
SoftmaxSoftmaxB
* B    �G
	reduce.27reduced*
  2 :
SoftmaxSoftmaxr���A

convert.28convertd*
  2 :
SoftmaxSoftmax��K
broadcast.29	broadcastd
*
  2  :
SoftmaxSoftmaxr ��C
	divide.30divided
*
  2  :
SoftmaxSoftmax��4
log.31logd
*
  2  :

LogLog��>
arg3.4	parameterd
*
  2  :
XLA_ArgsH��
 1
	reshape.8reshaped
*
  2  : ��?
multiply.32multiplyd
*
  2  :

Mulmul� �_
constant.41constant* :+

Reciprocalgradients/Log_grad/ReciprocalB
* B  �?�)a
broadcast.42	broadcastd
*
  2  :+

Reciprocalgradients/Log_grad/Reciprocal�*�)\
	divide.43divided
*
  2  :+

Reciprocalgradients/Log_grad/Reciprocal�+�*S
constant.34constant* :
Tilegradients/Sum_grad/TileB
* B    �"U
broadcast.35	broadcastd
*
  2  :
Tilegradients/Sum_grad/Tile�#�"k
constant.33constant*
  2  :
Tilegradients/Sum_grad/TileB
*
  2  B  ���!E

reshape.36reshape* :
Tilegradients/Sum_grad/Tile�$�!U
broadcast.37	broadcastd
*
  2  :
Tilegradients/Sum_grad/Tile�%�$J
add.38addd
*
  2  :
Tilegradients/Sum_grad/Tile�&�#%T
multiply.39multiplyd
*
  2  :
Mulgradients/mul_grad/Mul_1�'�&Y

reshape.40reshaped
*
  2  :'
Reshapegradients/mul_grad/Reshape_1�(�'R
multiply.44multiplyd
*
  2  :
Mulgradients/Log_grad/mul�,�+(V
multiply.45multiplyd
*
  2  :!
Mulgradients/Softmax_grad/mul�-�,S

convert.46convertd
*
  2  :!
Sumgradients/Softmax_grad/Sum�.�-U
constant.47constant* :!
Sumgradients/Softmax_grad/SumB
* B    �/G

convert.48convert* :!
Sumgradients/Softmax_grad/Sum�0�/V
	reduce.53reduced*
  2 :!
Sumgradients/Softmax_grad/Sumr�5�.0�1P

convert.54convertd*
  2 :!
Sumgradients/Softmax_grad/Sum�6�5S

reshape.55reshaped*
  2  :!
Sumgradients/Softmax_grad/Sum�7�6P

reshape.56reshaped*
  2 :!
Subgradients/Softmax_grad/sub�8�7Z
broadcast.57	broadcastd
*
  2  :!
Subgradients/Softmax_grad/subr �9�8V
subtract.58subtractd
*
  2  :!
Subgradients/Softmax_grad/sub�:�,9X
multiply.59multiplyd
*
  2  :#
Mulgradients/Softmax_grad/mul_1�;�:Q

convert.60convertd
*
  2  :
Sumgradients/add_grad/Sum_1�<�;S
constant.61constant* :
Sumgradients/add_grad/Sum_1B
* B    �=E

convert.62convert* :
Sumgradients/add_grad/Sum_1�>�=T
	reduce.67reduce
*
  2 :
Sumgradients/add_grad/Sum_1r �C�<>�?N

convert.68convert
*
  2 :
Sumgradients/add_grad/Sum_1�D�CV

reshape.69reshape
*
  2 :'
Reshapegradients/add_grad/Reshape_1�E�D<

reshape.73reshape
*
  2 :XLA_Retvals�I�Ec
transpose.71	transpose�d*
  2  :(
MatMulgradients/MatMul_grad/MatMul_1r �G�W

reshape.70reshaped
*
  2  :%
Reshapegradients/add_grad/Reshape�F�;d
dot.72dot�
*
  2  :(
MatMulgradients/MatMul_grad/MatMul_1�
 �H�GF�
  @

reshape.74reshape�
*
  2  :XLA_Retvals�J�HR
tuple.75tuple("
*
  2 "�
*
  2  :XLA_Retvals�K�IJ"�
�
*
  2  

*
  2 
d�*
  2  
d
*
  2  ("
*
  2 "�
*
  2  arg0.1arg1.2arg2.3arg3.4(L0K"�
�
*
  2  

*
  2 
d�*
  2  
d
*
  2  ("
*
  2 "�
*
  2  p0p1p2p30LB J 