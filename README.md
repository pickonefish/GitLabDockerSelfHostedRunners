

```
bash-4.4# gitlab-runner register --help
NAME:
   gitlab-runner register - register a new runner

USAGE:
   gitlab-runner register [command options] [arguments...]

OPTIONS:
   -c value, --config value                              Config file (default: "/etc/gitlab-runner/config.toml") [$CONFIG_FILE]
   --tag-list value                                      Tag list [$RUNNER_TAG_LIST]
   -n, --non-interactive                                 Run registration unattended [$REGISTER_NON_INTERACTIVE]
   --leave-runner                                        Don't remove runner if registration fails [$REGISTER_LEAVE_RUNNER]
   -r value, --registration-token value                  Runner's registration token (default: "glrt-3ksvFZLq8uYHAmYshUmA") [$REGISTRATION_TOKEN]
   --run-untagged                                        Register to run untagged builds; defaults to 'true' when 'tag-list' is empty [$REGISTER_RUN_UNTAGGED]
   --locked                                              Lock Runner for current project, defaults to 'true' [$REGISTER_LOCKED]
   --name value, --description value                     Runner name (default: "5aa9f41d7754") [$RUNNER_NAME]
   --limit value                                         Maximum number of builds processed by this runner (default: "0") [$RUNNER_LIMIT]
   --output-limit value                                  Maximum build trace size in kilobytes (default: "0") [$RUNNER_OUTPUT_LIMIT]
   --request-concurrency value                           Maximum concurrency for job requests (default: "0") [$RUNNER_REQUEST_CONCURRENCY]
   -u value, --url value                                 Runner URL [$CI_SERVER_URL]
   -t value, --token value                               Runner token [$CI_SERVER_TOKEN]
   --tls-ca-file value                                   File containing the certificates to verify the peer when using HTTPS [$CI_SERVER_TLS_CA_FILE]
   --tls-cert-file value                                 File containing certificate for TLS client auth when using HTTPS [$CI_SERVER_TLS_CERT_FILE]
   --tls-key-file value                                  File containing private key for TLS client auth when using HTTPS [$CI_SERVER_TLS_KEY_FILE]
   --executor value                                      Select executor, eg. shell, docker, etc. [$RUNNER_EXECUTOR]
   --builds-dir value                                    Directory where builds are stored [$RUNNER_BUILDS_DIR]
   --cache-dir value                                     Directory where build cache is stored [$RUNNER_CACHE_DIR]
   --clone-url value                                     Overwrite the default URL used to clone or fetch the git ref [$CLONE_URL]
   --env value                                           Custom environment variables injected to build environment [$RUNNER_ENV]
   --pre-clone-script value                              Runner-specific command script executed before code is pulled [$RUNNER_PRE_CLONE_SCRIPT]
   --pre-build-script value                              Runner-specific command script executed after code is pulled, just before build executes [$RUNNER_PRE_BUILD_SCRIPT]
   --post-build-script value                             Runner-specific command script executed after code is pulled and just after build executes [$RUNNER_POST_BUILD_SCRIPT]
   --shell value                                         Select bash, cmd or powershell [$RUNNER_SHELL]
   --ssh-user value                                      User name [$SSH_USER]
   --ssh-password value                                  User password [$SSH_PASSWORD]
   --ssh-host value                                      Remote host [$SSH_HOST]
   --ssh-port value                                      Remote host port [$SSH_PORT]
   --ssh-identity-file value                             Identity file to be used [$SSH_IDENTITY_FILE]
   --docker-host value                                   Docker daemon address [$DOCKER_HOST]
   --docker-cert-path value                              Certificate path [$DOCKER_CERT_PATH]
   --docker-tlsverify                                    Use TLS and verify the remote [$DOCKER_TLS_VERIFY]
   --docker-hostname value                               Custom container hostname [$DOCKER_HOSTNAME]
   --docker-image value                                  Docker image to be used [$DOCKER_IMAGE]
   --docker-runtime value                                Docker runtime to be used [$DOCKER_RUNTIME]
   --docker-cpuset-cpus value                            String value containing the cgroups CpusetCpus to use [$DOCKER_CPUSET_CPUS]
   --docker-cpus value                                   Number of CPUs [$DOCKER_CPUS]
   --docker-dns value                                    A list of DNS servers for the container to use [$DOCKER_DNS]
   --docker-dns-search value                             A list of DNS search domains [$DOCKER_DNS_SEARCH]
   --docker-privileged                                   Give extended privileges to container [$DOCKER_PRIVILEGED]
   --docker-userns value                                 User namespace to use [$DOCKER_USERNS_MODE]
   --docker-cap-add value                                Add Linux capabilities [$DOCKER_CAP_ADD]
   --docker-cap-drop value                               Drop Linux capabilities [$DOCKER_CAP_DROP]
   --docker-security-opt value                           Security Options [$DOCKER_SECURITY_OPT]
   --docker-devices value                                Add a host device to the container [$DOCKER_DEVICES]
   --docker-disable-cache                                Disable all container caching [$DOCKER_DISABLE_CACHE]
   --docker-volumes value                                Bind mount a volumes [$DOCKER_VOLUMES]
   --docker-volume-driver value                          Volume driver to be used [$DOCKER_VOLUME_DRIVER]
   --docker-cache-dir value                              Directory where to store caches [$DOCKER_CACHE_DIR]
   --docker-extra-hosts value                            Add a custom host-to-IP mapping [$DOCKER_EXTRA_HOSTS]
   --docker-volumes-from value                           A list of volumes to inherit from another container [$DOCKER_VOLUMES_FROM]
   --docker-network-mode value                           Add container to a custom network [$DOCKER_NETWORK_MODE]
   --docker-links value                                  Add link to another container [$DOCKER_LINKS]
   --docker-services value                               Add service that is started with container [$DOCKER_SERVICES]
   --docker-wait-for-services-timeout value              How long to wait for service startup (default: "0") [$DOCKER_WAIT_FOR_SERVICES_TIMEOUT]
   --docker-allowed-images value                         Whitelist allowed images [$DOCKER_ALLOWED_IMAGES]
   --docker-allowed-services value                       Whitelist allowed services [$DOCKER_ALLOWED_SERVICES]
   --docker-pull-policy value                            Image pull policy: never, if-not-present, always [$DOCKER_PULL_POLICY]
   --docker-shm-size value                               Shared memory size for docker images (in bytes) (default: "0") [$DOCKER_SHM_SIZE]
   --docker-tmpfs value                                  A toml table/json object with the format key=values. When set this will mount the specified path in the key as a tmpfs volume in the main container, using the options specified as key. For the supported options, see the documentation for the unix 'mount' command (default: "{}") [$DOCKER_TMPFS]
   --docker-services-tmpfs value                         A toml table/json object with the format key=values. When set this will mount the specified path in the key as a tmpfs volume in all the service containers, using the options specified as key. For the supported options, see the documentation for the unix 'mount' command (default: "{}") [$DOCKER_SERVICES_TMPFS]
   --docker-sysctls value                                Sysctl options, a toml table/json object of key=value. Value is expected to be a string. (default: "{}") [$DOCKER_SYSCTLS]
   --docker-helper-image value                           [ADVANCED] Override the default helper image used to clone repos and upload artifacts [$DOCKER_HELPER_IMAGE]
   --parallels-base-name value                           VM name to be used [$PARALLELS_BASE_NAME]
   --parallels-template-name value                       VM template to be created [$PARALLELS_TEMPLATE_NAME]
   --parallels-disable-snapshots                         Disable snapshoting to speedup VM creation [$PARALLELS_DISABLE_SNAPSHOTS]
   --virtualbox-base-name value                          VM name to be used [$VIRTUALBOX_BASE_NAME]
   --virtualbox-base-snapshot value                      Name or UUID of a specific VM snapshot to clone [$VIRTUALBOX_BASE_SNAPSHOT]
   --virtualbox-disable-snapshots                        Disable snapshoting to speedup VM creation [$VIRTUALBOX_DISABLE_SNAPSHOTS]
   --cache-type value                                    Select caching method: s3, to use S3 buckets [$CACHE_TYPE]
   --cache-s3-server-address value                       A host:port to the used S3-compatible server [$S3_SERVER_ADDRESS]
   --cache-s3-access-key value                           S3 Access Key [$S3_ACCESS_KEY]
   --cache-s3-secret-key value                           S3 Secret Key [$S3_SECRET_KEY]
   --cache-s3-bucket-name value                          Name of the bucket where cache will be stored [$S3_BUCKET_NAME]
   --cache-s3-bucket-location value                      Name of S3 region [$S3_BUCKET_LOCATION]
   --cache-s3-insecure                                   Use insecure mode (without https) [$S3_CACHE_INSECURE]
   --cache-s3-cache-path value                           Name of the path to prepend to the cache URL [$S3_CACHE_PATH]
   --cache-cache-shared                                  Enable cache sharing between runners. [$CACHE_SHARED]
   --machine-idle-nodes value                            Maximum idle machines (default: "0") [$MACHINE_IDLE_COUNT]
   --machine-idle-time value                             Minimum time after node can be destroyed (default: "0") [$MACHINE_IDLE_TIME]
   --machine-max-builds value                            Maximum number of builds processed by machine (default: "0") [$MACHINE_MAX_BUILDS]
   --machine-machine-driver value                        The driver to use when creating machine [$MACHINE_DRIVER]
   --machine-machine-name value                          The template for machine name (needs to include %s) [$MACHINE_NAME]
   --machine-machine-options value                       Additional machine creation options [$MACHINE_OPTIONS]
   --machine-off-peak-periods value                      Time periods when the scheduler is in the OffPeak mode [$MACHINE_OFF_PEAK_PERIODS]
   --machine-off-peak-timezone value                     Timezone for the OffPeak periods (defaults to Local) [$MACHINE_OFF_PEAK_TIMEZONE]
   --machine-off-peak-idle-count value                   Maximum idle machines when the scheduler is in the OffPeak mode (default: "0") [$MACHINE_OFF_PEAK_IDLE_COUNT]
   --machine-off-peak-idle-time value                    Minimum time after machine can be destroyed when the scheduler is in the OffPeak mode (default: "0") [$MACHINE_OFF_PEAK_IDLE_TIME]
   --kubernetes-host value                               Optional Kubernetes master host URL (auto-discovery attempted if not specified) [$KUBERNETES_HOST]
   --kubernetes-cert-file value                          Optional Kubernetes master auth certificate [$KUBERNETES_CERT_FILE]
   --kubernetes-key-file value                           Optional Kubernetes master auth private key [$KUBERNETES_KEY_FILE]
   --kubernetes-ca-file value                            Optional Kubernetes master auth ca certificate [$KUBERNETES_CA_FILE]
   --kubernetes-bearer_token_overwrite_allowed           Bool to authorize builds to specify their own bearer token for creation. [$KUBERNETES_BEARER_TOKEN_OVERWRITE_ALLOWED]
   --kubernetes-bearer_token value                       Optional Kubernetes service account token used to start build pods. [$KUBERNETES_BEARER_TOKEN]
   --kubernetes-image value                              Default docker image to use for builds when none is specified [$KUBERNETES_IMAGE]
   --kubernetes-namespace value                          Namespace to run Kubernetes jobs in [$KUBERNETES_NAMESPACE]
   --kubernetes-namespace_overwrite_allowed value        Regex to validate 'KUBERNETES_NAMESPACE_OVERWRITE' value [$KUBERNETES_NAMESPACE_OVERWRITE_ALLOWED]
   --kubernetes-privileged                               Run all containers with the privileged flag enabled [$KUBERNETES_PRIVILEGED]
   --kubernetes-cpu-limit value                          The CPU allocation given to build containers [$KUBERNETES_CPU_LIMIT]
   --kubernetes-memory-limit value                       The amount of memory allocated to build containers [$KUBERNETES_MEMORY_LIMIT]
   --kubernetes-service-cpu-limit value                  The CPU allocation given to build service containers [$KUBERNETES_SERVICE_CPU_LIMIT]
   --kubernetes-service-memory-limit value               The amount of memory allocated to build service containers [$KUBERNETES_SERVICE_MEMORY_LIMIT]
   --kubernetes-helper-cpu-limit value                   The CPU allocation given to build helper containers [$KUBERNETES_HELPER_CPU_LIMIT]
   --kubernetes-helper-memory-limit value                The amount of memory allocated to build helper containers [$KUBERNETES_HELPER_MEMORY_LIMIT]
   --kubernetes-cpu-request value                        The CPU allocation requested for build containers [$KUBERNETES_CPU_REQUEST]
   --kubernetes-memory-request value                     The amount of memory requested from build containers [$KUBERNETES_MEMORY_REQUEST]
   --kubernetes-service-cpu-request value                The CPU allocation requested for build service containers [$KUBERNETES_SERVICE_CPU_REQUEST]
   --kubernetes-service-memory-request value             The amount of memory requested for build service containers [$KUBERNETES_SERVICE_MEMORY_REQUEST]
   --kubernetes-helper-cpu-request value                 The CPU allocation requested for build helper containers [$KUBERNETES_HELPER_CPU_REQUEST]
   --kubernetes-helper-memory-request value              The amount of memory requested for build helper containers [$KUBERNETES_HELPER_MEMORY_REQUEST]
   --kubernetes-pull-policy value                        Policy for if/when to pull a container image (never, if-not-present, always). The cluster default will be used if not set [$KUBERNETES_PULL_POLICY]
   --kubernetes-node-selector value                      A toml table/json object of key=value. Value is expected to be a string. When set this will create pods on k8s nodes that match all the key=value pairs. (default: "{}")
   --kubernetes-image-pull-secrets value                 A list of image pull secrets that are used for pulling docker image [$KUBERNETES_IMAGE_PULL_SECRETS]
   --kubernetes-helper-image value                       [ADVANCED] Override the default helper image used to clone repos and upload artifacts [$KUBERNETES_HELPER_IMAGE]
   --kubernetes-terminationGracePeriodSeconds value      Duration after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. (default: "0") [$KUBERNETES_TERMINATIONGRACEPERIODSECONDS]
   --kubernetes-poll-interval value                      How frequently, in seconds, the runner will poll the Kubernetes pod it has just created to check its status (default: "0") [$KUBERNETES_POLL_INTERVAL]
   --kubernetes-poll-timeout value                       The total amount of time, in seconds, that needs to pass before the runner will timeout attempting to connect to the pod it has just created (useful for queueing more builds that the cluster can handle at a time) (default: "0") [$KUBERNETES_POLL_TIMEOUT]
   --kubernetes-pod-labels value                         A toml table/json object of key-value. Value is expected to be a string. When set, this will create pods with the given pod labels. Environment variables will be substituted for values here. (default: "{}")
   --kubernetes-service-account value                    Executor pods will use this Service Account to talk to kubernetes API [$KUBERNETES_SERVICE_ACCOUNT]
   --kubernetes-service_account_overwrite_allowed value  Regex to validate 'KUBERNETES_SERVICE_ACCOUNT' value [$KUBERNETES_SERVICE_ACCOUNT_OVERWRITE_ALLOWED]
   --kubernetes-pod-annotations value                    A toml table/json object of key-value. Value is expected to be a string. When set, this will create pods with the given annotations. Can be overwritten in build with KUBERNETES_POD_ANNOTATION_* varialbes (default: "{}")
   --kubernetes-pod_annotations_overwrite_allowed value  Regex to validate 'KUBERNETES_POD_ANNOTATIONS_*' values [$KUBERNETES_POD_ANNOTATIONS_OVERWRITE_ALLOWED]
```
