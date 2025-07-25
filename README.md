# lc_processed_files

Each top-level directory contains files processed with a certain compressor/pipeline. For now, there are two pipelines, `IABS', which runs only the quantization, and `IABS.BIT_4' which adds a bit transpose after the quantization.

Inside each top-level directory are more directories denoting the error bound used for the quantizer. Each of those folders contain the resulting test and training files after running the pipeline with the given error bound.

There is also a folder containing the compressor codes and a folder with the script to compile and run the compressors with a specified error bound. The codes are not user-friendly currently (and they might not work quite yet on another machine yet), but I will work on these soon so that y'all can run them yourselves if you would like!

Let me know if you have any questions.


