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