{
 DownloadConfig(service, directory) :: {
    exec: {
        command: 'bash',
        run_if: 'passed',
        arguments: ['-c','DEPLOY_SERVICE='+service+' make download-config --directory='+directory]
    }
 },

 CopyConfig(chart, filename, directory) :: {
    exec: {
        command: 'bash',
        run_if: 'passed',
        arguments: ['-c','DEPLOY_CHART='+chart+' FILENAME='+filename+' make copy-config --directory='+directory]
    }
 },

 GenericMakeCommand(command='bash', run_if='passed', arguments) :: {
    exec: {
        command: command,
        run_if: run_if,
        arguments: arguments
    }
 }
}