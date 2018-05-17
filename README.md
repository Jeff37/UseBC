# UseBC
Script that output a report from BatClassify analysis results.  

---  

The software developped by Chris Scott, called [BatClassify](https://bitbucket.org/chrisscott/batclassify), analyses bat recordings and produces a table of results, called Result.csv  
This R script attempts to make automatically a report of it's content, allowing to go back in the sound files for manual validation.  
This is a .Rmd script which can be easily used in RStudio to produce 3 convenient outputs as .html, .pdf and .docx  
My usage of it is to visualize the results on the .html page, allowing to reorder dynamically the last table and add some notes during validation on the .docx version.  

**Note** that depending on the file produced you should change the flags TRUE/FALSE of the two last chunks, enable the penultimate (and disable the last one) for .docx and .pdf and opposite when producing the .html  

This script is a first draft and should evolve, feel free to branch it or contact me directly at [jfgodeau@gmail.com](mailto:jfgodeau@gmail.com).  
