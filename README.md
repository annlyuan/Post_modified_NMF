# Post_modified_NMF

Copyright belongs to Yuan Liu, Sichuan University, CIC

Cite: [**Y,Liu, Y,Liang, QF,Kuang, FF,Xie, YY,Hao, ZN,Wen*, ML,Li*, Journal of Chemometrics. 2018a.**](https://onlinelibrary.wiley.com/doi/abs/10.1002/cem.2929)
      [**Y,Liu, RY,Jing, ZN,Wen*, ML,Li*., Frontier in pharmacology.2019. **](https://www.frontiersin.org/articles/10.3389/fphar.2019.01489/full)

---


## Brief

Post-modified NMF is a algorithm which is able to estimate different type of components from heterogeneous samples.

Also, this unsupervised algorithm we proposed here, is capable of estimating the gene expression profiles and contents of the major cell types of gene expressed samples without any prior reference knowledge.


There are two functions of Matlab has been released here. The main function [*'Post-modified NMF'*](https://github.com/annlyuan/Post_modified_NMF/blob/master/Post_modified_NMF.m) and [*'nnmf'*](https://github.com/annlyuan/Post_modified_NMF/blob/master/nnmf.m). 

* *'Post-modified NMF.m'* for the post-modification
* *'nnmf.m'* for Non-negative matrix factorization

---


## Input

### Required software: Matlab (recommend: Matlab 2018a)

|Input|Explanation|
|---------|------------------|
|'expression_profile'|The input of candidate gene-expressed profile for factorization，each line is the expression level for a gene, and each column is a bulk sample. This input should remove headers, and make sure the data type is 'double'. |
|'k'|The number of main factors that going to involve at factorization|
|'rep'|The time of running the whole processing，and take the average as output. The defualt 'rep' is 1.|
|'replicates'|The number of times to repeat the factorization (defualt 100), using new random starting values for W and H, except at the first replication if w0 and h0 are given (default 1). This tends to be most beneficial with the 'mult' algorithm.（details please reach function 'nnmf'）|


---


## Output

```matlab


[WM,HM]=Post_modified_NMF(expression_profile,k,rep,replicates)


```

Factors the M-by-N (M genes and N samples)matrix A into non-negative factors
WM (M-by-K) and HM (K-by-N). both WM and HM have been post-modified.


|Output|Description|
|------|:-----------:|
|WM (M-by-K)|The exprassion-profiles of M genes of K factors.
|HM (K-by-N)|The weights of K factor of N samples. 

###### · for more parameters of NMF please check the function 'nnmf'.


---


## Usage 


1. a. Prepare expression profile which is going to be factorized as "double" data type.
   b. Comfirm the number of main factors (k-value) by using factor analysis or other method.
   
2. a. Load *'expression profile'* and *'k'* into the same workspace where you saved **'Post-modified NMF'**.
   b. Set parameters 'rep' and 'replicates' (or use default).
   
3. Run 
   ```matlab
   
   
   [WM,HM]=Post_modified_NMF(expression_profile,k,rep,replicates)
   
   %example:
   [WM,HM]=Post_modified_NMF(A,2,100,100)
   
   
   ```
4. Done! *WM* and *HM* will generateand store separately at the same workspace.



## Thank you and enjoy!
