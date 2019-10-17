#!/usr/bin/env bash

export WORK_DIR=$(cd `dirname $0`; pwd)

# delete pulsar cluster operator
kubectl delete -f ${WORK_DIR}/operator.yaml

# delete pulsar cluster operator account and role
kubectl delete -f ${WORK_DIR}/role.yaml
kubectl delete -f ${WORK_DIR}/role_binding.yaml
kubectl delete -f ${WORK_DIR}/service_account.yaml

# delete pulsar cluster crd
kubectl delete -f ${WORK_DIR}/crds/pulsar.apache.org_pulsarclusters_crd.yaml
