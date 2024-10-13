'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".firebase/hosting.eQ.cache": "4dd9fd244b787977cc47bd88d890f7a1",
"apphosting.yaml": "250922a491db4d736c4ec11a5a19df93",
"assets/acceuil.svg": "4142b2568d07bbbe34b6b726adba8e70",
"assets/arrow_down.png": "d199208a3d948384976d7fd4537060b2",
"assets/AssetManifest.bin": "5a8e744e5023e83bb4e2367119684297",
"assets/AssetManifest.bin.json": "757dba415af6be65e18b65bd2ff6fd42",
"assets/AssetManifest.json": "cfebdeffc44287763ad49b3f15d1b650",
"assets/assets/acceuil.svg": "4142b2568d07bbbe34b6b726adba8e70",
"assets/assets/arrow_down.gif": "e0206185cd742921d46f9ef83e6fcbec",
"assets/assets/blog1.png": "63bf9397bb32a1373deb21855fbaca27",
"assets/assets/contact1.png": "5bd58a39ddd05ab8b46d7a652a4c9878",
"assets/assets/facilitymanagementlogo.png": "38c4b97dd259bb46434a57a0a6a8fe7a",
"assets/assets/formationlogo.png": "e5a639da3147f1f2f43c25346e4ffb03",
"assets/assets/home_carousel_1.jpg": "d9217259492d8cdf228c7be35cf4570f",
"assets/assets/home_carousel_2.jpg": "4da986b005f43c19f165f424161fc08a",
"assets/assets/logofraktal.png": "83b8c49dd85270d51190e7da4b76cceb",
"assets/assets/managementclientlogo.png": "6e02bde3ecbe6e6b15ae2421aff244b9",
"assets/assets/marketinglogo.png": "00b444b479b7850268d5b0042e993c5e",
"assets/assets/outsourcinglogo.png": "85524d1e3d9d9e484c917807add68a4c",
"assets/assets/presentation1.png": "88443f480e5be841c5c9cc884107ad27",
"assets/assets/solution1.png": "e6158a59ed73d5ec2cbdda7b86831409",
"assets/assets/userlogo.png": "e3075f8c365b9a8789d2e0ebcdd40fef",
"assets/blog1.png": "63bf9397bb32a1373deb21855fbaca27",
"assets/contact1.png": "5bd58a39ddd05ab8b46d7a652a4c9878",
"assets/FontManifest.json": "24636421a941e1a973ed7962700ca341",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/home_carousel_1.jpg": "d9217259492d8cdf228c7be35cf4570f",
"assets/logofraktal.png": "83b8c49dd85270d51190e7da4b76cceb",
"assets/NOTICES": "60ee9418f1ae49c1e1527b64fa1e984f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "c96dc22ca29a082af83cce866d35cebc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "365ca30baf45f0c00cb6fbfd8011c637",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "42ef0121626aaf12f22238ed4bc8f4a7",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a0f9e2efaa6a95595ca7a14c8804e986",
"assets/presentation1.png": "88443f480e5be841c5c9cc884107ad27",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/solution1.png": "e6158a59ed73d5ec2cbdda7b86831409",
"assets/userlogo.png": "e3075f8c365b9a8789d2e0ebcdd40fef",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"dataconnect/connector/connector.yaml": "7d5f35bd348b21e1c253d8c41ff3805a",
"dataconnect/connector/mutations.gql": "44afea03595e74ab6309e53171a8288c",
"dataconnect/connector/queries.gql": "dc98048cb548c536b4903ac186629e1f",
"dataconnect/dataconnect.yaml": "6e1d16e07d7098c379599995fe3494b4",
"dataconnect/schema/schema.gql": "eca427bd4c6f14c692eae936b0f418f8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"firebase-debug.log": "c3560ab91daea428d5b265e5b56ef6df",
"firebase.json": "50fbbff5b32ef4cb9a03bb350d2b1698",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "9368b5b74dcadcb6062e789d10640d57",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2659adafadad91747c751c7053a79953",
"/": "2659adafadad91747c751c7053a79953",
"main.dart.js": "f26f294eade1d8dbfb6b58acfda33ddc",
"manifest.json": "b5e8740a22fe60ad3a2e4d1f2d697529",
"version.json": "fd4f0cc89aa3075ff912a26e085cd57a",
"y/index.html": "ab290686469924579a596e3559df28e7"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
