{
 DownloadConfig(service, directory) :: {
    exec: {
        command: 'bash',
        run_if: 'passed',
        arguments: ['-c','DEPLOY_SERVICE='+service+' make download-config --directory='+directory]
     }
 }
}