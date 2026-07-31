(() => {
  const trackCtaClick = (element) => {
    const ctaName = element.dataset.track;
    if (!ctaName) return;

    window.dataLayer = window.dataLayer || [];
    const eventParams = {
      cta_name: ctaName,
      link_url: element.getAttribute("href") || ""
    };

    if (typeof window.gtag === "function") {
      window.gtag("event", "cta_click", eventParams);
      return;
    }

    window.dataLayer.push(["event", "cta_click", eventParams]);
  };

  document.querySelectorAll("[data-track]").forEach((element) => {
    element.addEventListener("click", () => trackCtaClick(element));
  });
})();
