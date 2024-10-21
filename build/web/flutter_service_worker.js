'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/acceuil.png": "554d30eb402b4313f4ba4a322f29efd6",
"assets/acceuil.svg": "4142b2568d07bbbe34b6b726adba8e70",
"assets/acceuil1.png": "46721cfcb18a001f403cc4efa8da8a3e",
"assets/Achat%20de%20materiel.png": "816d7c7daa6954365db086696942f093",
"assets/AllService.png": "63c379220c411090cee456afa6df9058",
"assets/AngularFormation.jpg": "4f69c8a247455f2e75049d30692a19fb",
"assets/Api.jpg": "c8f2018fa00c3254359f3c5ddc60d991",
"assets/arrow_down.gif": "e0206185cd742921d46f9ef83e6fcbec",
"assets/AssetManifest.bin": "15d710632232a235b61bd4b57ae2bf1d",
"assets/AssetManifest.bin.json": "6983d788fdf78530885ea0b3696440ad",
"assets/AssetManifest.json": "7f61bb54cff6dde91b364dec3d73d27b",
"assets/assets/acceuil.svg": "4142b2568d07bbbe34b6b726adba8e70",
"assets/assets/angularformation.jpg": "4f69c8a247455f2e75049d30692a19fb",
"assets/assets/arrow_down.gif": "e0206185cd742921d46f9ef83e6fcbec",
"assets/assets/AvaterEntrePreneur.jpg": "7f4667d1e36c15092350122767f2c076",
"assets/assets/blog1.png": "63bf9397bb32a1373deb21855fbaca27",
"assets/assets/cash.png": "93dd262b245a42d5cdd3055fa3a16e03",
"assets/assets/CommunityManager.jpg": "c33127769b029af441881c9829ab82e5",
"assets/assets/contact1.png": "5bd58a39ddd05ab8b46d7a652a4c9878",
"assets/assets/cybersecurite.jpg": "a0d5a11a582f26c8fa45ebda2304defa",
"assets/assets/developpeurweb.jpg": "82cfc9164cd84e94560259d50e7913df",
"assets/assets/facilitymanagementlogo.png": "38c4b97dd259bb46434a57a0a6a8fe7a",
"assets/assets/facilitymanagementslide1.jpg": "42f6daa5690b9e4b427bb20a2b1633ab",
"assets/assets/facilitymanagementslide2.jpg": "279bc3d21adf080fc275b72124767941",
"assets/assets/formationlogo.png": "e5a639da3147f1f2f43c25346e4ffb03",
"assets/assets/formationslide1.png": "e138ffdd780b9ff4000dd36d969f230b",
"assets/assets/formationslide2.png": "3a18b3cf1131a0a0e5a1ceb4b4baf551",
"assets/assets/frontend_developer.jpg": "9fb58d600c6f590749bf2dc41592a1c0",
"assets/assets/Homeimage.jpg": "84eb01834ade24b940415d8a0046d4d3",
"assets/assets/home_carousel_1.jpg": "d9217259492d8cdf228c7be35cf4570f",
"assets/assets/home_carousel_2.jpg": "4da986b005f43c19f165f424161fc08a",
"assets/assets/horloge-icon.png": "d8a19ae4fa764da0cfb37dd4df2bf3dc",
"assets/assets/Iot.jpg": "0f4ef978f2ff134fd4c84be7c6cd56db",
"assets/assets/jobboardlogo.png": "e3f11d523b862386726b3b1116657511",
"assets/assets/logofraktal.png": "83b8c49dd85270d51190e7da4b76cceb",
"assets/assets/machinelearing.jpg": "88077d3c5d5adaca3799c5e2539b8414",
"assets/assets/managementclientlogo.png": "6e02bde3ecbe6e6b15ae2421aff244b9",
"assets/assets/marketinglogo.png": "00b444b479b7850268d5b0042e993c5e",
"assets/assets/MarKetingRh.jpg": "7811b4166f2582e8a9510c05d0bec486",
"assets/assets/NodeJsFormation.jpg": "a89c1282643ddd028343f649d196597b",
"assets/assets/outsourcinglogo.png": "85524d1e3d9d9e484c917807add68a4c",
"assets/assets/presentation1.png": "88443f480e5be841c5c9cc884107ad27",
"assets/assets/ReactJsFormation.png": "473deb8fb9e7791c3cf04cc7b2a7a42a",
"assets/assets/solution1.png": "e6158a59ed73d5ec2cbdda7b86831409",
"assets/assets/userlogo.png": "e3075f8c365b9a8789d2e0ebcdd40fef",
"assets/AssistantRh.jpg": "117abb018ec4d7c1b1459440486f658b",
"assets/AssistantRH.webp": "37d0f234740aff17167855cb4bef9d08",
"assets/AvaterEntrePreneur.jpg": "7f4667d1e36c15092350122767f2c076",
"assets/blog.png": "9c1bc531bc777f34f7398b7a0a298a61",
"assets/blog.svg": "b54719b836ed76b2e16b56cb534bfbdd",
"assets/blog1.png": "63bf9397bb32a1373deb21855fbaca27",
"assets/Camion.jpg": "aca1911b5486d1befe774983d7e8c3da",
"assets/cash.png": "93dd262b245a42d5cdd3055fa3a16e03",
"assets/certification.png": "d05d3a7a9f0d480c6d86bfade5726c71",
"assets/Comment.png": "63130bcf2c9ee9139d403eef9fd94f37",
"assets/CommunityManager.jpg": "c33127769b029af441881c9829ab82e5",
"assets/CommunnityManager.jpg": "b55dd2d435512d1bbc2b6896eee188aa",
"assets/Construction.jpg": "f882aa284f00a70bc4e9b02dcc9af4f4",
"assets/contact.png": "af34630ea07f82464f6653c00c79e233",
"assets/contact.svg": "e87a37fdf2e98cbcf168d47a5526baaa",
"assets/contact1.png": "5bd58a39ddd05ab8b46d7a652a4c9878",
"assets/Cr%C3%A8che.png": "393bcc7cfdaa7ee3816f9daa302efccf",
"assets/cybersecurite.jpg": "a0d5a11a582f26c8fa45ebda2304defa",
"assets/developpeurweb.jpg": "82cfc9164cd84e94560259d50e7913df",
"assets/diversit%C3%A9.png": "34a9c9f49fdb56805b68ac56e69642e2",
"assets/DolardCard.png": "67879ec6f2a1bff4f7e33c5dd49afe8f",
"assets/domaineFormation.png": "0d48902fca1af28d89a9054184b92ba0",
"assets/DropDownOpen.png": "5cd935fc3e58148c27f1c98902b00756",
"assets/DropDownPic.png": "81a09a08be1057b4598264783a5eea1e",
"assets/EntrePreneur.jpg": "f432845d871471a27fcb2c7dc7f38567",
"assets/Espace%20De%20Travail.png": "3655e5188388979dcc6f80f8cd09c4d8",
"assets/facebook.png": "508a91949ed8e269e9f37075f83f9140",
"assets/facilitymanagementlogo.png": "38c4b97dd259bb46434a57a0a6a8fe7a",
"assets/facilitymanagementslide1.jpg": "42f6daa5690b9e4b427bb20a2b1633ab",
"assets/facilitymanagementslide2.jpg": "279bc3d21adf080fc275b72124767941",
"assets/FontManifest.json": "24636421a941e1a973ed7962700ca341",
"assets/fonts/MaterialIcons-Regular.otf": "2af9184c97df685189c7f1d12b6ba82d",
"assets/FoodAppDescritpion.png": "4421067fb7293643bdd3a666fd0bb6ec",
"assets/FormationBrasCrois%C3%A9.png": "738955747e585d5de6cdf3e2a2460109",
"assets/formationlogo.png": "e5a639da3147f1f2f43c25346e4ffb03",
"assets/formationslide1.png": "e138ffdd780b9ff4000dd36d969f230b",
"assets/formationslide2.png": "3a18b3cf1131a0a0e5a1ceb4b4baf551",
"assets/frontend_developer.jpg": "9fb58d600c6f590749bf2dc41592a1c0",
"assets/Graphiste.jpg": "4f8fcced8814b29e06198bc82e120e14",
"assets/Homeimage.jpg": "84eb01834ade24b940415d8a0046d4d3",
"assets/home_carousel_1.jpg": "d9217259492d8cdf228c7be35cf4570f",
"assets/home_carousel_2.jpg": "4da986b005f43c19f165f424161fc08a",
"assets/horloge-icon.png": "d8a19ae4fa764da0cfb37dd4df2bf3dc",
"assets/horloge-murale.png": "bc8bc52da05c30772fdc78d9a18c66d5",
"assets/H%C3%A9bergement.png": "d7594c0fad44b1a73862d0a5611764f0",
"assets/instructeur.png": "79c2c72b5a665827983a71d1abe1631e",
"assets/Iot.jpg": "0f4ef978f2ff134fd4c84be7c6cd56db",
"assets/jobboardlogo.png": "e3f11d523b862386726b3b1116657511",
"assets/LearningPlatForm.png": "be3a6c5ff4c88af5efff4f97e3a64a4a",
"assets/linkedin%20(1).png": "fd0d5546fdbdc85c76c4372a0d51f1bc",
"assets/linkedin.png": "a073ecdfc08870a4b033b6869c7f48fa",
"assets/logo-company.avif": "5c231c0f748fa06c2086c37e5c13ca45",
"assets/logofraktal.png": "83b8c49dd85270d51190e7da4b76cceb",
"assets/machinelearing.jpg": "88077d3c5d5adaca3799c5e2539b8414",
"assets/managementclientlogo.png": "6e02bde3ecbe6e6b15ae2421aff244b9",
"assets/marketinglogo.png": "00b444b479b7850268d5b0042e993c5e",
"assets/MarKetingRh.jpg": "7811b4166f2582e8a9510c05d0bec486",
"assets/MenuPropositionScreen.png": "b343e95ef3c6d48ce4937e296a89a3d8",
"assets/MobileDevelopment.jpg": "0b32f135bfdf8f7afb6552ba754ea88e",
"assets/money-management%20(1).png": "9bd72ef477752304d8102f0bb1dc9017",
"assets/money-management.png": "fe35d48520e023361cd8c84448f64a93",
"assets/NodeJsFormation.jpg": "a89c1282643ddd028343f649d196597b",
"assets/NOTICES": "d31051d14c9dd394451df4f238b1ae00",
"assets/Nouveau%20Document%20texte.txt": "e2b362efef4ad0677046e1837b4cf053",
"assets/orange-logo.jpeg": "ec1baedadc4559214d3c88e4ae100ac3",
"assets/outsourcinglogo.png": "85524d1e3d9d9e484c917807add68a4c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "c96dc22ca29a082af83cce866d35cebc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "2cc978693473e0e93c50522d0dc50a67",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "773065589715561e40cae392799c2e64",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "6cf7f6139d5b46b180cbfd1f7e7577aa",
"assets/presentation.png": "70deef845a2f0de0f337c93b32eb3a49",
"assets/presentation.svg": "16ba2f3584eb4333ae93bfb79481a584",
"assets/presentation1.png": "88443f480e5be841c5c9cc884107ad27",
"assets/ProfilePic.png": "fd5538753cb46ef3a63464de54ebbecc",
"assets/ReactJsFormation.png": "473deb8fb9e7791c3cf04cc7b2a7a42a",
"assets/Restaurant.png": "62a467bd300a55019c0d0589863bd716",
"assets/SectionCandidature.png": "a3bd2bf63328a999ac5e743425f3e433",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/Slide2JobBoard.jpg": "9a72f79d755781a0a6cdc2d96cade856",
"assets/Slide5JobBoard.jpg": "a7094659cdaa8cd61889791e7be33e50",
"assets/solution.png": "e907f0916d824e0b504efbb338397b88",
"assets/solution.svg": "5ef608f656af3f49e75ba67b3764848d",
"assets/solution1.png": "e6158a59ed73d5ec2cbdda7b86831409",
"assets/stars-icon.jpg": "cc9c02873022a2c7598cff6a8460523f",
"assets/StepSubscribe.png": "ef2bc1073271ed1e723c62ffdf6d2a9d",
"assets/themeBreeeze.png": "8c8ae0a2d3b38fcbec8d32e0634085a1",
"assets/TransPort.png": "a457481e1c9eae9c94210029bbdcca3e",
"assets/userlogo.png": "e3075f8c365b9a8789d2e0ebcdd40fef",
"assets/web-development-formation.webp": "77a393ed416a89abec4d99d36b7b6c4c",
"assets/WebDevelopment.jpg": "ee27118ecb9f81659a18ef572660b624",
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
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "2268818ba81ae8d49a0a3e66232dfcaf",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2659adafadad91747c751c7053a79953",
"/": "2659adafadad91747c751c7053a79953",
"main.dart.js": "eaf6de9507f6170a4a44aea5a2645f02",
"manifest.json": "b5e8740a22fe60ad3a2e4d1f2d697529",
"version.json": "fd4f0cc89aa3075ff912a26e085cd57a"};
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
