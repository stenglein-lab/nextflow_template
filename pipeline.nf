#!/usr/bin/env nextflow

/*
    <ADD a brief description of the pipeline here>

    _____________  pipeline 
    implemented in nextflow

    <Add creation date>
    March 9, 2021

    <Add author>
*/


// output usage message
params.help = false
params.h = false

params.input_dir = "$baseDir/input/"
params.fastq_dir = "${params.input_dir}/fastq/"
params.outdir = "$baseDir/results"                                                       

// ------------------
// Trimming settings
// ------------------

// where are R scripts found...
params.scripts_bindir="${baseDir}/scripts"


// define usage output message
def usageMessage() {
  log.info """
        Usage:
        The typical command for running the pipeline is as follows:
        nextflow run -resume pipeline.nf 

        Mandatory arguments:

        Optional arguments:
        --outdir                       Output directory into which to place final results files 
                                       [default: ${params.outdir}]

        --help                         This usage statement.
        --h                            This usage statement.
        """
}

if (params.help || params.h) {
    usageMessage()
    exit 0
}


/* 
  Check input parameters 
*/
def check_params () {

}



// check parameters
check_params()


/*
   Setup some initial indexes and dictionaries needed by downstream processes.
   Only do this once at beginning.
*/
process setup_indexes {

  output:
  val("indexes_complete") into post_index_setup_ch

  script:
  """

  """
}

