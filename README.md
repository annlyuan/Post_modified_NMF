# Post_modified_NMF
Copyright belongs to Yuan Liu, Sichuan University,CIC
Cite: Liu, Y.; Liang, Y.; Kuang, Q.; Xie, F. Journal of Chemometrics. 2018a, 32(11): e2929.

Post-modified NMF is a algorithm which is able to estimate different type of components from heterogeneous samples.
Also, this unsupervised algorithm we proposed here, is capable of estimating the gene expression profiles and contents of the major cell types of gene expressed samples without any prior reference knowledge.


There are two functions of Matlab has been released here. the main function 'post-modified NMF' and 'nnmf'. 
'post-modified NMF'covers the post-modification part 
'nnmf' is the function for Non-negative matrix factorization
please check the introduction of function 'nnmf'.

|Time of day| Favorite snack | Why?                |
|-----------|:----------------:|----:              |
|Morning    | Oreos!           | Delicious         |
|Afternoon  | Otter Pop        | It's hot out baby |
|Night      | IPA              | I need it. |
|Input|Explanation|
|-----------|:----------------:|
|'expression_profile'|The input of candidate gene-expressed profile for factorization，each line is the expression level for a gene, and each column is a bulk sample. This input should remove headers, and make sure the data type is 'double'. |
%
%      'k'                    The number of main factors that going to
%                             involve at factorization
%
%      'rep'                  The time of running the whole processing，and take the average as output.
%                             The defualt 'rep' is 1.
%
%      'replicates'           The number of times to repeat the factorization (defualt 100), using
%                             new random starting values for W and H, except at the
%                             first replication if w0 and h0 are given (default 1).
%                             This tends to be most beneficial with the 'mult'.
%                             algorithm.（details please reach function 'nnmf'）


[WM,HM]=Post_modified_NMF(expression_profile,k,rep,replicates)

[WM,HM]=Post_modified_NMF(A,2,100,100)
%   
%   Factors the N-by-M (N genes and M samples)matrix A into non-negative factors
%   WM (N-by-K) and HM (K-by-M). both WM and HM have been post-modified.
%
%   WM (N-by-K) - the exprassion-profiles of N genes of K factors.
%   HM (K-by-M) - the weights of K factor of M samples. 
%
%%
%      Input                  Explanation
%
%      'expression_profile'   The input of candidate gene-expressed profile for
%                             factorization，each line is the expression level for a gene, and 
%                             each column is a bulk sample. This input should remove headers， 
%                             and make sure the data type is 'double'. 
%
%      'k'                    The number of main factors that going to
%                             involve at factorization
%
%      'rep'                  The time of running the whole processing，and take the average as output.
%                             The defualt 'rep' is 1.
%
%      'replicates'           The number of times to repeat the factorization (defualt 100), using
%                             new random starting values for W and H, except at the
%                             first replication if w0 and h0 are given (default 1).
%                             This tends to be most beneficial with the 'mult'.
%                             algorithm.（details please reach function 'nnmf'）
%




# Markdown Tutorial

Michael Wiest 2018

---

# Text weight

# Really heavy text!
## Less heavy
### Even littler
#### I'm shrinking
##### Oh no
###### plz help
This is some normal text...

This is a new paragraph
that continues in the same line despite the line break.


---


# Text formatting

 **I'm bold!**

 *I'm italic!*

### <span style="color:cyan">COLOR!</span> <span style="color:red">COLOR!</span> <span style="color:yellow">COLOR!</span> <span style="color:magenta">COLOR!</span>



---

# Links
## [I'm a hyperlink](https://en.wikipedia.org/wiki/YOLO_(aphorism)
[*I'm a small italic link*](https://en.wikipedia.org/wiki/YOLO_(aphorism)

___


# Quoting

"Normal Quotes"

Block quotes!

>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a ipsum nec justo dictum convallis. Integer luctus ultricies tortor sit amet vehicula. Nam tristique faucibus pharetra. Cras nec erat ligula. Proin at odio ex. Nulla ornare imperdiet nulla, sed posuere est imperdiet et. Curabitur egestas risus vitae quam pulvinar, in vulputate leo mollis. Fusce nec tincidunt libero. Suspendisse odio urna, pretium eget lectus id, accumsan bibendum ex. Aenean accumsan malesuada sem, at blandit dui euismod a. Sed sed eros porttitor, iaculis augue id, pulvinar mi. Ut in scelerisque libero, quis malesuada sem. Donec commodo diam quis massa condimentum, non consequat orci bibendum. Praesent auctor tellus egestas felis tincidunt, eget imperdiet lorem pharetra.

---

# Pictures
Two ways to format this
![Puppy0](https://www.merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/puppy-3143-ad4140d8f6055cda2cd8956d4af37ea9@1x.jpg "A puppy!")


![Puppy1][puppy2]

[puppy2]: https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg "Another Puppy!!"


[![Puppy2](https://pbs.twimg.com/profile_images/446566229210181632/2IeTff-V_400x400.jpeg "This puppy is a link!")](nytimes.com)

---

# Code
You can reference variables like `x` or `y` inline.
But you can also have block quotes like:
```
import numpy as np
random = np.random.randn(10, 10)

print('Hello World!')
```
But you can even format the text for languages:
```python
import numpy as np
random = np.random.randn(10, 10)

print('Hello World!')
```
**Pretty!**


----

# Lists

1. Item One
2. Another


* Unordered Item
* Another one!

---

# Tables
Note the different alignments

|Time of day| Favorite snack | Why?                |
|-----------|:----------------:|----:              |
|Morning    | Oreos!           | Delicious         |
|Afternoon  | Otter Pop        | It's hot out baby |
|Night      | IPA              | I need it. |

# Comments (look at the source code)

[comment]: <> (This is a comment
               everything in here won't be in the final doc)

 <!---
This is also a comment :)
 -->
