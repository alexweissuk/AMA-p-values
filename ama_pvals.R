## Alexander Weiss, 4 May 2017
##
## amapvals - Generates p-values according to American Medical
## Association guidelines, which is used by Psychosomatic Medicine
## and other journals.
##
## I wrote this function becauase I think the reporting style makes
## sense and is straightforward.
##
## Basic rules are as follows:
## 1. p < 0.001 is reported "p < 0.001"
## 2. p < 0.1 is reported to three digits, e.g., p = 0.03521 -> "p = 0.035"
## 3. p >= 0.1 is reported to two digits, e.g., p = 0.10123 -> "p = 0.10"
## 4. p > 0.99 is reported "p > 0.99"

amapvals <- function(oldps) {

## Create NA vector for new p-values the same length as the input
## vector
    
    newps <- rep(NA,length(oldps))

## Replace NAs with AMA style p-values

    newps[oldps < .1 & oldps >= .001] <- format(round(oldps[oldps < .1
                           & oldps >= .001],3),nsmall=3)

    newps[oldps < .001] <- "< 0.001"

    newps[oldps > .99] <- "> 0.99"

    newps[oldps >= .1 & oldps <= .99] <- 

        newps[oldps >= .1 & oldps <= .99] <-
            format(round(oldps[oldps >= .1 & oldps <= .99],2),nsmall=2)

## Output new p-values
    
return(newps)
        
}
