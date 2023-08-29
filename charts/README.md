## Charts

* [Helm](https://helm.sh/docs)
* [helm/chart-releaser](https://helm.sh/docs/howto/chart_releaser_action)

```bash
# new helm chart
helm create charts/<CHART_NAME>

# verify chart
helm template charts/box --debug --values charts/box/values.yaml > tmp-box.yaml

# test chart
helm template charts/box | kubectl apply -f -
```
