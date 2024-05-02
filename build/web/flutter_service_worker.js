'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "734ca41fec310df0c858bff8d68ee4bd",
"assets/AssetManifest.bin.json": "dbcd99a192e97d38863bd9ae36f98211",
"assets/AssetManifest.json": "c776f399169b7fa9eb752be15491cbc8",
"assets/assets/fonts/Pacifico-Regular.ttf": "85bb2d0ec4a0da159de42e89089ccc0b",
"assets/assets/image/1.jpg": "b689facb88be1d406939f2039c4f3522",
"assets/assets/image/2.jpg": "7b1faecde822aedc05d89d7a37957226",
"assets/assets/image/3.2.jpg": "ab231cc280e68cc4801dcb98538846df",
"assets/assets/image/3.jpg": "5f6d03bd0490f385314a01d029c1feb7",
"assets/assets/image/4.jpg": "65afb820612933cc7a3b45710cae67f6",
"assets/assets/image/chekankannal.mp4": "8c5acfca84d0c3c57801914d3a84c194",
"assets/assets/image/land1.jpg": "b205b382ddb8bb5776a5686ace987417",
"assets/assets/image/land2.jpg": "eedd938b182c4692f45c289eca8ea376",
"assets/assets/image/land3.jpg": "1ff2f14144ad0c987cfdd4d6f93b67b9",
"assets/assets/image/land4.jpg": "e6aa584b8833aa30fa470635f7204a01",
"assets/assets/image/landscapecard.jpg": "c416bdee04bc65b13260e660c2dc46e4",
"assets/assets/image/protraitInvitationcard.jpg": "aa8a296f438663b79782f3b9f0752180",
"assets/assets/image/them.jpg": "6bf46d8f45bf25a5c81f714ab8550eee",
"assets/assets/map.png": "c9d5bc73aa2d57ea65e586d66718cfc7",
"assets/assets/savethedate.png": "3d6eca75f1f9c23e9d0c90106133ab99",
"assets/assets%255Cimage%255C1.jpg": "b689facb88be1d406939f2039c4f3522",
"assets/assets%255Cimage%255C2.jpg": "7b1faecde822aedc05d89d7a37957226",
"assets/assets%255Cimage%255C3.2.jpg": "ab231cc280e68cc4801dcb98538846df",
"assets/assets%255Cimage%255C3.jpg": "5f6d03bd0490f385314a01d029c1feb7",
"assets/assets%255Cimage%255C4.jpg": "65afb820612933cc7a3b45710cae67f6",
"assets/assets%255Cimage%255Cchekankannal.mp4": "8c5acfca84d0c3c57801914d3a84c194",
"assets/assets%255Cimage%255Cland1.jpg": "b205b382ddb8bb5776a5686ace987417",
"assets/assets%255Cimage%255Cland2.jpg": "eedd938b182c4692f45c289eca8ea376",
"assets/assets%255Cimage%255Cland3.jpg": "1ff2f14144ad0c987cfdd4d6f93b67b9",
"assets/assets%255Cimage%255Cland4.jpg": "e6aa584b8833aa30fa470635f7204a01",
"assets/assets%255Cimage%255Clandscapecard.jpg": "c416bdee04bc65b13260e660c2dc46e4",
"assets/assets%255Cimage%255CprotraitInvitationcard.jpg": "aa8a296f438663b79782f3b9f0752180",
"assets/assets%255Cimage%255Cthem.jpg": "6bf46d8f45bf25a5c81f714ab8550eee",
"assets/assets%255Cmap.png": "c9d5bc73aa2d57ea65e586d66718cfc7",
"assets/assets%255Csavethedate.png": "3d6eca75f1f9c23e9d0c90106133ab99",
"assets/FontManifest.json": "848dcd580c80116c346cbe0ab9f89c2f",
"assets/fonts/MaterialIcons-Regular.otf": "2170bd859a6b686eeac18e05da7515de",
"assets/NOTICES": "3529b7d752940ca6a754ba8bd3c51365",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "dc3d3028ecb1b9812ca581a7f51b53ed",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "61b12f6aa3e9b96a6d7eb418e0003fba",
"icons/Icon-maskable-192.png": "61b12f6aa3e9b96a6d7eb418e0003fba",
"icons/Icon-maskable-512.png": "04fd1c48d1da6355ae1467f878e9c786",
"icons/Icons-512.png": "04fd1c48d1da6355ae1467f878e9c786",
"index.html": "d375d34f571d9f1a11c7388b90a8413b",
"/": "d375d34f571d9f1a11c7388b90a8413b",
"main.dart.js": "8a90af4e96372bcfd614376d950d98b8",
"manifest.json": "e8add07f0fa638eadb3c306d597d1dff",
"ogimage.jpg": "4b7816a1b7246ad5a4cdb66c9251ef11",
"version.json": "2aa3c57100564158890f8d71e4f523a9"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
