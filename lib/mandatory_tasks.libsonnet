local util = import 'tasks.libsonnet';

local mandatory_tasks = {
    tasks: [
      util.DownloadConfig('abc-api', 'some-dir'),
      util.CopyConfig('abc-api','config.json','some-dir'),
      ]
};

mandatory_tasks



