## Charts

* [Helm](https://helm.sh/docs)

```bash
# new helm chart
helm create charts/<CHART_NAME>

# verify chart
helm template charts/box --debug --values charts/box/values.yaml > tmp-box.yaml

# test chart
helm template charts/box | kubectl apply -f -
```

* [helm/chart-releaser](https://helm.sh/docs/howto/chart_releaser_action)

```bash
# init gh-pages
git checkout --orphan gh-pages
git rm -rf .
echo "helm-charts" > index.html
git add index.html
git commit -a -m "add index.html"
git push origin -u gh-pages
```
