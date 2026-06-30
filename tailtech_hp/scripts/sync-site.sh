#!/usr/bin/env sh
set -eu

mkdir -p site/images site/assets site/js

cp index.html privacy.html commercial.html 404.html site/
cp favicon.svg _headers site/
cp robots.txt sitemap.xml site/
cp assets/wanko_ai.pdf assets/search_ai.pdf site/assets/
cp js/contact-links.js site/js/

cp \
  images/tail-tech-word-a-transparent.webp \
  images/dog-event-hiyori.webp \
  images/dog-event-service-generated-thumb.webp \
  images/service_ai_search_knowledge_thumb.webp \
  images/service_dx_highres.webp \
  images/service_system_dev_highres.webp \
  images/cost-navy-final-thick.webp \
  images/case_pet_ai_event_photo.webp \
  images/case_ai_search_highres.webp \
  images/case_line_highres.webp \
  images/case_system_highres.webp \
  images/profile-temp-selected.webp \
  images/apple-touch-icon.png \
  site/images/
