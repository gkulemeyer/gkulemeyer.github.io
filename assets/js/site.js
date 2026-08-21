(() => {
  const pairs = {
    "/": "/es/",
    "/research": "/es/investigacion.html",
    "/academic-activity": "/es/actividad-academica.html",
    "/cv": "/es/cv.html",
    "/contact": "/es/contacto.html",
    "/404": "/es/"
  };

  const normalize = (path) => {
    const withoutExtension = path.replace(/\.html$/, "");
    return withoutExtension.length > 1 ? withoutExtension.replace(/\/$/, "") : withoutExtension;
  };

  const current = normalize(window.location.pathname);
  const isSpanish = current === "/es" || current.startsWith("/es/");
  const englishRoute = isSpanish
    ? Object.keys(pairs).find((path) => normalize(pairs[path]) === current) || "/"
    : current;
  const englishPath = englishRoute === "/" ? "/" : `${englishRoute}.html`;
  const spanishPath = pairs[englishRoute] || "/es/";

  const englishLink = document.querySelector('[data-lang="en"]');
  const spanishLink = document.querySelector('[data-lang="es"]');
  if (englishLink && spanishLink) {
    englishLink.href = englishPath;
    spanishLink.href = spanishPath;
    (isSpanish ? spanishLink : englishLink).setAttribute("aria-current", "page");
  }

  document.querySelectorAll(".site-nav__links a").forEach((link) => {
    if (normalize(new URL(link.href).pathname) === current) {
      link.setAttribute("aria-current", "page");
    }
  });
})();
