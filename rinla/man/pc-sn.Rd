%%
%% WARNING! DO NOT EDIT!
%% This file is automatically generated from pc-sn.R
%%
 \name{pc.sn}
 \alias{inla.pc.sn}
 \alias{pc.sn}
 \alias{pc.rsn}
 \alias{inla.pc.rsn}
 \alias{pc.dsn}
 \alias{inla.pc.dsn}
 \alias{pc.psn}
 \alias{inla.pc.psn}
 \alias{pc.qsn}
 \alias{inla.pc.qsn}

 \title{Utility functions for the PC prior for \code{skewness} in the skew-normal
 linkfunction and likelihood}

 \description{Functions to evaluate, sample, compute quantiles and
              percentiles of the PC prior for the \code{skewness}
              in the skew-normal link-function and likelihood}
 \usage{
 inla.pc.rsn(n, lambda = 40)
 inla.pc.dsn(skew, lambda = 40, log = FALSE)
 inla.pc.qsn(p, lambda = 40)
 inla.pc.psn(q, lambda = 40)
 }
 \arguments{
   \item{n}{number of observations}
   \item{lambda}{the rate parameter in the PC prior}
   \item{skew}{vector of evaluation points}
   \item{log}{logical. return the density in natural or log-scale.}
   \item{p}{vector of probabilities}
   \item{q}{vector of quantiles}
 }
 \details{
 Defines the PC prior for the \code{skewness} for the skew-normal linkfunction
 and likelihood, where \code{skew=0} is the base model. The skewness range from
 -0.99527... to 0.99527....  ca.
 }
\value{%%
  \code{inla.pc.dsn} gives the density,
  \code{inla.pc.psn} gives the distribution function,
  \code{inla.pc.qsn} gives the quantile function, and
  \code{inla.pc.rsn} generates random deviates.
 }
 \seealso{inla.doc("pc.sn")}
 \author{havard rue \email{hrue@r-inla.org}}
 \examples{
 x = inla.pc.rsn(100,  lambda = 40)
 d = inla.pc.dsn(x, lambda = 40)
 x = inla.pc.qsn(0.5, lambda = 40)
 inla.pc.psn(x, lambda = 40)
 }
