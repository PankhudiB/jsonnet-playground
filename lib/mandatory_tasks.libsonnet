local util = import 'tasks.libsonnet';

{
    MandatoryTasks(api,configFile,directory) :: {
        tasks: [
              util.DownloadConfig(api, directory),
              util.CopyConfig(api,configFile,directory),
              ]
    }
}



