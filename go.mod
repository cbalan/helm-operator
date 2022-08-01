module github.com/fluxcd/helm-operator

go 1.16

require (
	github.com/Shopify/logrus-bugsnag v0.0.0-20171204204709-577dee27f20d // indirect
	github.com/bshuster-repo/logrus-logstash-hook v1.0.2 // indirect
	github.com/bugsnag/panicwrap v1.2.0 // indirect
	github.com/docker/go-metrics v0.0.1 // indirect
	github.com/docker/libtrust v0.0.0-20160708172513-aabc10ec26b7 // indirect
	github.com/fatih/color v1.9.0 // indirect
	github.com/fluxcd/flux v1.17.2-0.20200121140732-3903cf8e71c3
	github.com/fluxcd/helm-operator/pkg/install v0.0.0-00010101000000-000000000000
	github.com/garyburd/redigo v1.6.0 // indirect
	github.com/go-kit/kit v0.10.0
	github.com/gofrs/uuid v3.2.0+incompatible // indirect
	github.com/golang/protobuf v1.5.2
	github.com/google/go-cmp v0.5.6
	github.com/gorilla/mux v1.7.3
	github.com/helm/helm-2to3 v0.8.2
	github.com/kardianos/osext v0.0.0-20190222173326-2bc1f35cddc0 // indirect
	github.com/mattn/go-colorable v0.1.6 // indirect
	github.com/ncabatoff/go-seq v0.0.0-20180805175032-b08ef85ed833
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_golang v1.11.1
	github.com/shurcooL/vfsgen v0.0.0-20181202132449-6a9ea43bcacd
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.7.0
	github.com/yvasiyarov/go-metrics v0.0.0-20150112132944-c25f46c4b940 // indirect
	github.com/yvasiyarov/newrelic_platform_go v0.0.0-20160601141957-9c099fbc30e9 // indirect
	google.golang.org/grpc v1.43.0
	helm.sh/helm/v3 v3.6.3
	k8s.io/api v0.22.5
	k8s.io/apiextensions-apiserver v0.21.14
	k8s.io/apimachinery v0.22.5
	k8s.io/cli-runtime v0.21.14
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/helm v2.17.0+incompatible
	k8s.io/klog v1.0.0
	k8s.io/kubectl v0.21.14
	k8s.io/utils v0.0.0-20211116205334-6203023598ed
	sigs.k8s.io/yaml v1.2.0
)

// github.com/fluxcd/helm-operator/pkg/install lives in this very reprository, so use that
replace github.com/fluxcd/helm-operator/pkg/install => ./pkg/install

// Transitive requirement from Helm: https://github.com/helm/helm/blob/v3.5.2/go.mod#L52-L53
replace (
	// Mitigating CVE-2017-11468 and GHSA-qq97-vm5h-rrhg
	github.com/docker/distribution => github.com/docker/distribution v2.8.1+incompatible

	github.com/docker/docker => github.com/moby/moby v17.12.0-ce-rc1.0.20200618181300-9dc6525e6118+incompatible
)

// Pin Flux to 1.18.0
replace (
	github.com/fluxcd/flux => github.com/fluxcd/flux v1.18.0
	github.com/fluxcd/flux/pkg/install => github.com/fluxcd/flux/pkg/install v0.0.0-20200206191601-8b676b003ab0
)

// Force upgrade because of a transitive downgrade.
// github.com/fluxcd/flux
// +-> github.com/fluxcd/helm-operator@v1.0.0-rc6
//     +-> helm.sh/helm/v3@v3.1.2
//     +-> helm.sh/helm@v2.16.1
replace (
	helm.sh/helm/v3 => helm.sh/helm/v3 v3.6.3
	k8s.io/helm => k8s.io/helm v2.17.0+incompatible
)

// Mitigating:
//   CVE-2019-16884, CVE-2019-19921, CVE-2022-24769,
//   CVE-2022-29162, CVE-2021-30465 and CVE-2016-9962.
replace github.com/opencontainers/runc => github.com/opencontainers/runc v1.1.2

// Mitigating: GHSA-crp2-qrr5-8pq7
replace github.com/containerd/containerd => github.com/containerd/containerd v1.4.13

// Mitigating: GHSA-77vh-xpmg-72qh
replace github.com/opencontainers/image-spec => github.com/opencontainers/image-spec v1.0.2

// Mitigating: CVE-2021-41092
replace github.com/docker/cli => github.com/docker/cli v20.10.9+incompatible

// Mitigating: CVE-2022-21235
replace github.com/Masterminds/vcs => github.com/Masterminds/vcs v1.13.3

replace github.com/prometheus/client_golang => github.com/prometheus/client_golang v1.7.1

// Pin kubernetes dependencies to 1.21.*
replace (
	k8s.io/api => k8s.io/api v0.21.14
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.21.14
	k8s.io/apimachinery => k8s.io/apimachinery v0.21.14
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.21.14
	k8s.io/client-go => k8s.io/client-go v0.21.14
	k8s.io/code-generator => k8s.io/code-generator v0.21.14
	k8s.io/kubectl => k8s.io/kubectl v0.21.14
)

// Mitigating: CVE-2021-38561
replace golang.org/x/text => golang.org/x/text v0.3.7

// Mitigating: CVE-2022-29526
replace golang.org/x/sys => golang.org/x/sys v0.0.0-20220412211240-33da011f77ad

// Mitigating: CVE-2022-27191
replace golang.org/x/crypto => golang.org/x/crypto v0.0.0-20220314234659-1baeb1ce4c0b
