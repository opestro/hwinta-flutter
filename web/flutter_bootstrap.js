{{flutter_js}}
{{flutter_build_config}}

const searchParams = new URLSearchParams(window.location.search);
const renderer = searchParams.get('renderer');
const userConfig = renderer ? {'renderer': renderer} : {};

// addversion to mainJsPath
_flutter.buildConfig.builds.forEach(build => {
    build.mainJsPath += "?v="+{{flutter_service_worker_version}};
});
    
_flutter.loader.load({
  config: {
    ...userConfig,
    mainJsPath: "main.dart.js?v=" + {{flutter_service_worker_version}},
  },
  serviceWorkerSettings: {
    serviceWorkerVersion: {{flutter_service_worker_version}},
  },
});