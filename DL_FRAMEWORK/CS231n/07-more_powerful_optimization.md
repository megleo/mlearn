# More powerful optimization

```python
while true
	weights_grad = evalutate_gradient(loss_fun, data, weights)
    weights += -step_size*weights_grad
```

![image-20230903112903634](images/image-20230903112903634.png)

## Optimization: Problems with SGD

1. 如果梯度在一个方向上变化很快而在另一个方向上变化慢怎么办？ 

   梯度下降时怎样做的？![image-20230903113510230](images/image-20230903113510230.png)损失函数具有较大的条件数，即Hessian矩阵中的最大与最小奇异值之差较大。

2. 如果损失函数有一个局部极小值或者鞍点呢？

   ![image-20230903114633376](images/image-20230903114633376.png)

3. 我们的梯度来自小批量，所以会有一定的噪音产生。

### 解决办法 SGD+Momentum

1. SGD
   $$
   x_{t+1} = x_t-\alpha\nabla f(x_t)
   $$

   ```python
   while True:
       dx = compute_gradient(x)
       x+= learning_rate * dx
   ```

2. SGD+Momentum
   $$
   v_{t+1} =\rho \  v_t + \nabla f(x_t) \\
   x_{t+1} = x_t + \alpha v_{t+1} \\
   typically \ \rho = 0.9\ or \ 0.99
   $$
   

   ```python
   vx = 0
   while True:
       dx = compute_gradient(x)
       vx = rho * vx  + dx
       x+= learning_rate*vx
   ```

      ![image-20230903120517799](images/image-20230903120517799.png)

   有效解决小batchsize 噪音的问题。

   ![image-20230903135300361](images/image-20230903135300361.png)

   ### Nesterov Momentum

   ![image-20230903135930730](images/image-20230903135930730.png)
   $$
   v_{t+1} = \rho v_t\ - \alpha   \nabla f(x_t+\rho v_t) \\
   x_{t+1} = x_t + v_{t+1}                            
   $$

   ## AdaGrad

   ```python
   grad_squared = 0
   while True:
       dx = compute_gradient(x)
       grad_squard += dx * dx
       x -= learning_rate * dx / (np.sqrt(grad_squard)+1e-7)
   ```

   增加了基于每个维度的历史平方和的梯度的逐元素缩放。对凸函数很有效果，但是非凸函数会困在某一点。

   ## RMSProp

   ```python
   grad_squared = 0
   while True:
       dx = compute_gradient(x)
       grad_squared = decay_rate * grad_squared + (1-decay_rate)*dx*dx
       x -= learning_rate * dx / (np.sqrt(grad_squared) + 1e-7)
   ```

## Adam almost

```python
first_moment = 0
second_moment = 0 
    first_comment = beta1 * first_moment + (1-beta1) *dx
    second_moment = beta2 * second_moment + (1-beta2) * dx * dx
    first_unbias = first_moment / (q- beat1 ** t)
    second_unbias = second_moment / (1-beat2 ** t)
    x -= learning_rate * first_moment / (np.sqrt(second_moment) + 1e-7)
```

## Learning rate

所有的这些优化算法都将学习率看作是一个超参数

学习率随着时间的推理而衰减

衰变步

例如，学习率每隔几个周期衰减一半

指数衰减
$$
\alpha = \alpha _{0} e^{-kt}
$$
1/t 衰减
$$
\alpha =\frac{\alpha_{0}}{(1+kt)}
$$

## Model Ensembles 模型的集合体

1. 训练多个独立模型
2. 在测试时平均他们的结果

享受2%的额外性能

## Regularization 正则化

如何提高单个模型的性能？

**在模型中加入一些成分，来防止模型过拟合**

### Regularization: 在损失函数中添加正则化

$$
L = \frac{1}{N}\sum^{N}_{i=1}\sum_{j\neq y_{i}} max(0, f(x_i; W)_j - f(x_i; W)_(y_i) + 1)  + \lambda R(W)
$$

In common use 

L2 regularization
$$
R(W) = \sum_{k}\sum_{l}W_{k, l}^2
$$
L1 regularization
$$
R(W) = \sum_{k}\sum_{l}|W_{k, l}|
$$
Elastic net (L1 + L2)
$$
R(W)=\sum_{k}\sum_{l} \beta W_{k, l}^{2} + |W_{k, l}|
$$

### Dropout

在每次前向传播过程中，随机设置一些神经元为0， Dropout概率为超参数，常见值为0.5

![image-20230904084932551](images/image-20230904084932551.png)

```python
p = 0.5 # probability of keeping a unit activate, higher = less dropout
def train_step(X):
    """X contains the data"""
    # forward pass for example 3 layer neural network
    H1 = np.maximum(0, np.dot(W1, X) + b1)
    U1 = np.random.rand(*H1.shape) < p	# first dropout mask
    H1 *= U1
    H2 = np.maximum(0, np.dot(W2, H1) +b2)
    U2 = np.random.rand(*H2.shape) < p
    H2 *= U2
    out = np.dot(W3, H2) + b3
    
```

1. How can this possibly be a good idea?

   - Dropout 避免了特征间的相互适应。
   - Dropout 是训练一个大的模型集合（共享参数）

   ![image-20230904092332633](images/image-20230904092332633.png)

   ### Regularization Data Augmentation 数据增强

   随机裁剪图片

   残差网络

   ## Transfer Learning 迁移学习

   **You need a lot of a data if you want to train/use CNNs**
   
   大模型+小数据就非常容易过拟合。
   
   ![image-20230905084727983](images/image-20230905084727983.png)
   
   ![image-20230905084950396](images/image-20230905084950396.png)
   
   ![image-20230905085206340](images/image-20230905085206340.png)











