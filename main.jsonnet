local mandatory = import 'lib/mandatory_tasks.libsonnet';
local tasks = import 'lib/tasks.libsonnet';

local download_squads = 'DEPLOY_CHART=customer-communication-gateway make download-services --directory=kubernetes-deployer';

{
    Deploy_Prod: {
        jobs: {
            deploy_xyz_ui: {
                artifacts: ['random'],
                resource: ['Linux'],
                tasks: [t for t in mandatory.tasks]
            },
            deploy_abc_ui: {
                artifacts: ['random'],
                resource: ['Linux'],
                tasks: [t for t in mandatory.tasks] +
                        [
                           tasks.GenericMakeCommand('bash','passed',['-c', download_squads])
                        ]
            }
        }
    }
}