function [WM,HM]=Post_modified_NMF(expression_profile,k,rep,replicates)
% Copyright belongs to Yuan Liu, Sichuan University,CIC

% This main function covers the post-modification part and more detailed parameter for NMF,
% please check the introduction of function 'nnmf'.

% Brief:Post-modified NMF is a algorithm which is able to estimate
%       different type of components from heterogeneous samples.
%
%       Also, this unsupervised algorithm we proposed here, is capable of 
%       estimating the gene expression profiles and contents of the 
%       major cell types of gene expressed samples without any prior reference
%       knowledge.
%      £¨Cite: Liu, Y.; Liang, Y.; Kuang, Q.; Xie, F. Journal of Chemometrics. 2018a, 32(11): e2929.£©
%
%%
%
%   [WM,HM]=Post_modified_NMF(expression_profile,k,rep,replicates)
%
%   [WM,HM]=Post_modified_NMF(A,2,100,100)
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
%                             factorization£¬each line is the expression level for a gene, and 
%                             each column is a bulk sample. This input should remove headers£¬ 
%                             and make sure the data type is 'double'. 
%
%      'k'                    The number of main factors that going to
%                             involve at factorization
%
%      'rep'                  The time of running the whole processing£¬and take the average as output.
%                             The defualt 'rep' is 1.
%
%      'replicates'           The number of times to repeat the factorization (defualt 100), using
%                             new random starting values for W and H, except at the
%                             first replication if w0 and h0 are given (default 1).
%                             This tends to be most beneficial with the 'mult'.
%                             algorithm.£¨details please reach function 'nnmf'£©
%
%%
 if (nargin<3)
        rep = 1 ;
        replicates = 100;
        fprintf(' Default rep, replicates are used \r you can change the iter time by input rep, replicates. \r e.g. [WM,HM]=Post_modified_NMF(expression_profile,k,100,100) \r')
 end
%%
sample=expression_profile;
HH=zeros(k,size(sample,2));
WW=zeros(size(sample,1),k);
for i=1:rep
 opt = statset('Display','final','UseParallel',1);% more details for 'opt' options please reach function 'nnmf'
 [W,H]=nnmf(sample,k,'replicates',replicates,'options',opt,'algorithm','mult');
 HH=HH+H;
 WW=WW+W;
end
HM=HH/rep;
WM=WW/rep;
%%
%modifing HS
BHM=[];
for i=1:size(HM,2)
     sumH(:,i)=sum(HM(:,i),1);
     BHM(:,i)=HM(:,i)/(sum(HM(:,i),1));  
end
 BWW=sample*BHM'/(BHM*BHM');
 ttt=BWW<=0;
 sum(ttt)
 [aa,bb]=find(logical([ttt])==1);
%modifing WM
 for i=1:size(aa,1)    
 BWW(aa(i),bb(i))=0.0001;
 end
WM=BWW;
end
%Cite: Liu, Y.; Liang, Y.; Kuang, Q.; Xie, F. Journal of Chemometrics. 2018a, 32(11): e2929.