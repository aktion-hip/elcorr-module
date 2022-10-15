// Toggle between showing and hiding the sidebar, and add overlay effect
function elcorr_open() {
    const ecSidebar = document.getElementById("elcorrSidebar");
    const overlayBg = document.getElementById("elcorrOverlay");
    if (ecSidebar.style.display === 'block') {
        ecSidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        ecSidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function elcorr_close() {
    const ecSidebar = document.getElementById("elcorrSidebar");
    const overlayBg = document.getElementById("elcorrOverlay");
    ecSidebar.style.display = "none";
    overlayBg.style.display = "none";
}

// Language switcher
function elcorr_language(el, root) {
    const href = window.location.href;
    if (el.value === "uk") {
        console.log("1");
        if (!href.includes("/uk/")) {
            // switch to Ukrainian
            if (href.endsWith("/")) {
                window.location.href = href + "uk/";
            } else if (href.endsWith(root + ".html")) {
                const switchUrl = href.replace("/" + root + ".html", "/uk/" + root + ".html");
                window.location.href = switchUrl;
            } else {
                const switchUrl = href.replace("/" + root + "/", "/uk/" + root + "/");
                window.location.href = switchUrl;
            }
        }
    } else {
        if (href.includes("/uk/")) {
            // switch to English (default)
            window.location.href = href.replace("/uk/", "/");
        }
    }
}