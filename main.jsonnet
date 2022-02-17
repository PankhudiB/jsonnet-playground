local mandatory = import 'lib/tasks/mandatory_tasks.libsonnet';
local tasks = import 'lib/tasks/tasks.libsonnet';

local download_squads = 'DEPLOY_CHART=abc-api make download-services --directory=kubernetes-deployer';

{
    Deploy_Prod: {
        jobs: {
            deploy_xyz_ui: {
                artifacts: ['build'],
                resource: ['Linux'],
                local mandatory_tasks = mandatory.MandatoryTasks('xyz-api','configxyz.json', 'some-xyz-dir'),
                tasks: mandatory_tasks.tasks
            },

            deploy_abc_ui: {
                artifacts: ['build'],
                resource: ['Linux'],

                local mandatory_tasks = mandatory.MandatoryTasks('abc-api','configabc.json', 'some-abc-dir'),
                tasks: mandatory_tasks.tasks +
                       [ tasks.GenericMakeCommand('bash','passed',['-c', download_squads])]

            }
        }
    }
}

