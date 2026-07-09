# Changelog

## [3.24.1](https://github.com/snowdreamtech/build-essential/compare/alpine-v3.24.1...alpine-v3.24.1) (2026-07-09)


### 🐛 Bug Fixes

* **alpine:** add empty line to trigger release pipeline test ([6f32fb1](https://github.com/snowdreamtech/build-essential/commit/6f32fb1c9fae9bcd4e86beb2e3013a0138784372))
* **alpine:** gracefully install arch-specific debug and build tools ([a1a34b3](https://github.com/snowdreamtech/build-essential/commit/a1a34b37bfd4c5da18950385daa220c16a22845b))
* ensure cross-platform compatibility by conditionally installing arch-specific packages ([dc7715d](https://github.com/snowdreamtech/build-essential/commit/dc7715db530f894ab49266afee671b78c4d97378))
* use ghcr.io for base images to avoid rate limits ([9f1d73a](https://github.com/snowdreamtech/build-essential/commit/9f1d73a75a61f2f368f5572c4bd28f4c92ef8fd5))


### 🛠 Refactoring

* **docker:** align Dockerfiles with base image structure ([232574f](https://github.com/snowdreamtech/build-essential/commit/232574fed8418f8c7f257d001e951361dfa467a0))
* migrate Dockerfiles to dev skeleton and update build-essential versions ([65c799f](https://github.com/snowdreamtech/build-essential/commit/65c799f0f76dd1d6b46c5178bec3f4714cca8f9e))
* remove redundant docker-entrypoint.sh files ([87c576b](https://github.com/snowdreamtech/build-essential/commit/87c576b27731ad11c5bc0ebc661e07c5a09ff1c1))
* reorganize distribution variants into docker directory ([67a8c91](https://github.com/snowdreamtech/build-essential/commit/67a8c911e21801bf12b3e83d02e22f3b3f59a2ba))


### 📖 Documentation

* add detailed comments to entrypoint initialization scripts ([f42cbaa](https://github.com/snowdreamtech/build-essential/commit/f42cbaab6edfbc5c38c2a636dfd8651fea900940))


### ♻️ Miscellaneous Chores

* add 0-git-keep.sh to prevent empty entrypoint.d directories ([ce77247](https://github.com/snowdreamtech/build-essential/commit/ce77247762becc1edf85ec7b57747d3f3127044a))
* clear previous changelog entries ([bfcf790](https://github.com/snowdreamtech/build-essential/commit/bfcf790f814b7d58a7a1ca3e8d935ad8f643033d))
* **deps:** bump base images to alpine 3.24.0, debian 13.5.0, rocky 10.2.0 ([1688969](https://github.com/snowdreamtech/build-essential/commit/168896956d2f4c7f91309c4c98ffef36ca7e8546))
* merge upstream branch and resolve conflicts ([0ab3ed6](https://github.com/snowdreamtech/build-essential/commit/0ab3ed6c927860dd82d5587f19181c76c1b332b0))
* release main ([afa286c](https://github.com/snowdreamtech/build-essential/commit/afa286c5b9c41908021b044f31fee3348f52c973))
* release main ([4011a21](https://github.com/snowdreamtech/build-essential/commit/4011a21a23395acc9545168c95ca0ec5c867e7d3))
* release main ([f66597a](https://github.com/snowdreamtech/build-essential/commit/f66597a5feae95e8853f4cc730c81e93e172f6ca))
* release main ([b3a5cc9](https://github.com/snowdreamtech/build-essential/commit/b3a5cc9ef0a64a7bc04ed7c2acf0cca5327c5c26))
* release main ([abe5d3a](https://github.com/snowdreamtech/build-essential/commit/abe5d3a566d9e46b38222bd990691ff09c0f523e))
* release main ([deb8454](https://github.com/snowdreamtech/build-essential/commit/deb8454df7518d56939ab3851245a4cd7b03d709))
* release main ([d87cb81](https://github.com/snowdreamtech/build-essential/commit/d87cb815685ad9b5b43d4b9a195c68dee2fd8065))
* release main ([78328d2](https://github.com/snowdreamtech/build-essential/commit/78328d20bd3697d48ea90aee8d0eaa6af4ccc09c))
* release main ([b720ad5](https://github.com/snowdreamtech/build-essential/commit/b720ad57dd1691d8ae07dcac7d46d0bd257af3a0))
* release main ([32dd84d](https://github.com/snowdreamtech/build-essential/commit/32dd84de4be973395d0867b5d527d528948a35df))
* release main ([725c69f](https://github.com/snowdreamtech/build-essential/commit/725c69fdcc222b5b83d0690629ce213a68c586ab))
* release main ([070b694](https://github.com/snowdreamtech/build-essential/commit/070b694a702763b60fc6b057a81418320418cafa))
* release main ([36d1211](https://github.com/snowdreamtech/build-essential/commit/36d1211036847a8c6aaa01a21a1c695a47b71d45))
* release main ([9ad4f94](https://github.com/snowdreamtech/build-essential/commit/9ad4f9490832efdc310f2ebbd8c77f3404daf07f))
* release main ([b0684a3](https://github.com/snowdreamtech/build-essential/commit/b0684a32a652e83506451e6056168cfec8b9142c))
* release main ([495e18a](https://github.com/snowdreamtech/build-essential/commit/495e18a4babcb06a12c2f5aec9ea571d97cb32e3))
* release main ([d4a3a34](https://github.com/snowdreamtech/build-essential/commit/d4a3a34b00a6b9f381cd5d556749c257516b2f08))
* release main ([28d9426](https://github.com/snowdreamtech/build-essential/commit/28d94263f4374017274707faef7183917b689be9))
* **release:** deduplicate CHANGELOG headers ([4f07b71](https://github.com/snowdreamtech/build-essential/commit/4f07b71194f58ba214f1fb60ce0dc56d71c499e2))
* **release:** deduplicate CHANGELOG headers ([82be3d5](https://github.com/snowdreamtech/build-essential/commit/82be3d5576b65b7f69b1a9afb8604f2c8f0e47f7))
* **release:** deduplicate CHANGELOG headers ([d47fb44](https://github.com/snowdreamtech/build-essential/commit/d47fb44cb105b368722d7d0e210a27b525f82d87))
* **release:** deduplicate CHANGELOG headers ([e795177](https://github.com/snowdreamtech/build-essential/commit/e79517795d98b9f8292ef956586a6dc03932d03c))
* **release:** deduplicate CHANGELOG headers ([27919e4](https://github.com/snowdreamtech/build-essential/commit/27919e4baf4aab5b2a2bf32a7d437b05a717c11b))
* **release:** deduplicate CHANGELOG headers ([438190d](https://github.com/snowdreamtech/build-essential/commit/438190d297c151c75eca4912fdc22c285d5ec1ea))
* **release:** deduplicate CHANGELOG headers ([256f043](https://github.com/snowdreamtech/build-essential/commit/256f04311b2344f2648ca5bcf407146f8c690258))
* **release:** deduplicate CHANGELOG headers ([d263aae](https://github.com/snowdreamtech/build-essential/commit/d263aae7b223103a01dd0e114430381c5d863dd7))
* **release:** deduplicate CHANGELOG headers ([133954e](https://github.com/snowdreamtech/build-essential/commit/133954e95cfae85cbba2fb9c1ac5acbc677ca39d))
* **release:** deduplicate CHANGELOG headers ([1d82410](https://github.com/snowdreamtech/build-essential/commit/1d82410d6038be22d7741f1519826f30023b0f3e))
* **release:** deduplicate CHANGELOG headers ([5e1a539](https://github.com/snowdreamtech/build-essential/commit/5e1a5390319933b48d20ad993714587d826c0aa7))
* **release:** implement automatic changelog deduplication step ([282c220](https://github.com/snowdreamtech/build-essential/commit/282c22081e1ad7a1a010a7f297d20bc7c9b416a7))
* update alpine base image to 3.24.1 ([3021ed3](https://github.com/snowdreamtech/build-essential/commit/3021ed3b4ffa5f8916f5fa46aa4325e8ebf84ba6))

## [3.24.0](https://github.com/snowdreamtech/build-essential/compare/alpine-v3.24.0...alpine-v3.24.0) (2026-06-21)


### 🐛 Bug Fixes

* **alpine:** add empty line to trigger release pipeline test ([6f32fb1](https://github.com/snowdreamtech/build-essential/commit/6f32fb1c9fae9bcd4e86beb2e3013a0138784372))
* **alpine:** gracefully install arch-specific debug and build tools ([a1a34b3](https://github.com/snowdreamtech/build-essential/commit/a1a34b37bfd4c5da18950385daa220c16a22845b))
* ensure cross-platform compatibility by conditionally installing arch-specific packages ([dc7715d](https://github.com/snowdreamtech/build-essential/commit/dc7715db530f894ab49266afee671b78c4d97378))


### 🛠 Refactoring

* **docker:** align Dockerfiles with base image structure ([232574f](https://github.com/snowdreamtech/build-essential/commit/232574fed8418f8c7f257d001e951361dfa467a0))
* migrate Dockerfiles to dev skeleton and update build-essential versions ([65c799f](https://github.com/snowdreamtech/build-essential/commit/65c799f0f76dd1d6b46c5178bec3f4714cca8f9e))
* remove redundant docker-entrypoint.sh files ([87c576b](https://github.com/snowdreamtech/build-essential/commit/87c576b27731ad11c5bc0ebc661e07c5a09ff1c1))
* reorganize distribution variants into docker directory ([67a8c91](https://github.com/snowdreamtech/build-essential/commit/67a8c911e21801bf12b3e83d02e22f3b3f59a2ba))


### 📖 Documentation

* add detailed comments to entrypoint initialization scripts ([f42cbaa](https://github.com/snowdreamtech/build-essential/commit/f42cbaab6edfbc5c38c2a636dfd8651fea900940))


### ♻️ Miscellaneous Chores

* clear previous changelog entries ([bfcf790](https://github.com/snowdreamtech/build-essential/commit/bfcf790f814b7d58a7a1ca3e8d935ad8f643033d))
* **deps:** bump base images to alpine 3.24.0, debian 13.5.0, rocky 10.2.0 ([1688969](https://github.com/snowdreamtech/build-essential/commit/168896956d2f4c7f91309c4c98ffef36ca7e8546))
* release main ([deb8454](https://github.com/snowdreamtech/build-essential/commit/deb8454df7518d56939ab3851245a4cd7b03d709))
* release main ([d87cb81](https://github.com/snowdreamtech/build-essential/commit/d87cb815685ad9b5b43d4b9a195c68dee2fd8065))
* release main ([78328d2](https://github.com/snowdreamtech/build-essential/commit/78328d20bd3697d48ea90aee8d0eaa6af4ccc09c))
* release main ([b720ad5](https://github.com/snowdreamtech/build-essential/commit/b720ad57dd1691d8ae07dcac7d46d0bd257af3a0))
* release main ([32dd84d](https://github.com/snowdreamtech/build-essential/commit/32dd84de4be973395d0867b5d527d528948a35df))
* release main ([725c69f](https://github.com/snowdreamtech/build-essential/commit/725c69fdcc222b5b83d0690629ce213a68c586ab))
* release main ([070b694](https://github.com/snowdreamtech/build-essential/commit/070b694a702763b60fc6b057a81418320418cafa))
* release main ([36d1211](https://github.com/snowdreamtech/build-essential/commit/36d1211036847a8c6aaa01a21a1c695a47b71d45))
* release main ([9ad4f94](https://github.com/snowdreamtech/build-essential/commit/9ad4f9490832efdc310f2ebbd8c77f3404daf07f))
* release main ([b0684a3](https://github.com/snowdreamtech/build-essential/commit/b0684a32a652e83506451e6056168cfec8b9142c))
* release main ([495e18a](https://github.com/snowdreamtech/build-essential/commit/495e18a4babcb06a12c2f5aec9ea571d97cb32e3))
* release main ([d4a3a34](https://github.com/snowdreamtech/build-essential/commit/d4a3a34b00a6b9f381cd5d556749c257516b2f08))
* release main ([28d9426](https://github.com/snowdreamtech/build-essential/commit/28d94263f4374017274707faef7183917b689be9))
* **release:** deduplicate CHANGELOG headers ([d47fb44](https://github.com/snowdreamtech/build-essential/commit/d47fb44cb105b368722d7d0e210a27b525f82d87))
* **release:** deduplicate CHANGELOG headers ([e795177](https://github.com/snowdreamtech/build-essential/commit/e79517795d98b9f8292ef956586a6dc03932d03c))
* **release:** deduplicate CHANGELOG headers ([27919e4](https://github.com/snowdreamtech/build-essential/commit/27919e4baf4aab5b2a2bf32a7d437b05a717c11b))
* **release:** deduplicate CHANGELOG headers ([438190d](https://github.com/snowdreamtech/build-essential/commit/438190d297c151c75eca4912fdc22c285d5ec1ea))
* **release:** deduplicate CHANGELOG headers ([256f043](https://github.com/snowdreamtech/build-essential/commit/256f04311b2344f2648ca5bcf407146f8c690258))
* **release:** deduplicate CHANGELOG headers ([d263aae](https://github.com/snowdreamtech/build-essential/commit/d263aae7b223103a01dd0e114430381c5d863dd7))
* **release:** deduplicate CHANGELOG headers ([133954e](https://github.com/snowdreamtech/build-essential/commit/133954e95cfae85cbba2fb9c1ac5acbc677ca39d))
* **release:** deduplicate CHANGELOG headers ([1d82410](https://github.com/snowdreamtech/build-essential/commit/1d82410d6038be22d7741f1519826f30023b0f3e))
* **release:** deduplicate CHANGELOG headers ([5e1a539](https://github.com/snowdreamtech/build-essential/commit/5e1a5390319933b48d20ad993714587d826c0aa7))
* **release:** implement automatic changelog deduplication step ([282c220](https://github.com/snowdreamtech/build-essential/commit/282c22081e1ad7a1a010a7f297d20bc7c9b416a7))

## Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
