## Charts

### Development

* [Helm](https://helm.sh/docs)

```bash
# new helm chart
helm create charts/<CHART_NAME>

# verify chart
helm template charts/box --debug --values charts/box/values.yaml > tmp-box.yaml

# test chart
helm template charts/box | kubectl apply -f -
```

### Release

* [megalopolis](https://hckops.github.io/megalopolis) repository
* [helm/chart-releaser](https://helm.sh/docs/howto/chart_releaser_action) action

Setup `gh-pages`
```bash
git checkout --orphan gh-pages
git rm -rf .
echo "helm-charts" > index.html
git add index.html
git commit -a -m "add index.html"
git push origin -u gh-pages
```

Update `index.html`
```html
<html>
  <head>
    <title>Public Helm Charts repository</title>
  </head>
  <body>
    <h1>Public Helm Charts repository</h1>
    <p>Add this repository</p>
    <pre>
      helm repo add megalopolis https://hckops.github.io/megalopolis
    </pre>
  </body>
</html>
```
