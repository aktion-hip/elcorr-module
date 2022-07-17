<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
    <head>
        [@cms.page /]
        <title>Eliminate Corruption</title>
        <meta name="description" content="${content.description!""}" />
        <meta name="keywords" content="${content.keywords!""}" />
        [#include "../include/head.ftl"]

        [#assign site = sitefn.site()!]
        [#assign theme = sitefn.theme(site)!]
        [#list theme.cssFiles as cssFile]
            <link rel="stylesheet" type="text/css" href="${cssFile.link}" media="${cssFile.media}" />
        [/#list]
        [#list theme.jsFiles as jsFile]
            <script src="${jsFile.link}"></script>
        [/#list]
    </head>
    <body class="elcorr ${cmsfn.language()}">
        [#include "../include/navigation.ftl"]
        <!-- Sidebar -->
        <nav class="elcorr-sidebar elcorr-collapse elcorr-theme-l5 w3-bar-block w3-large w3-animate-left" id="elcorrSidebar">
            [#include "../include/sidebar_main.ftl"]
        </nav>        

        <!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
        <div class="elcorr-main" style="margin-left:250px">
            [#include "../include/content.ftl"]
            [#include "../include/footer.ftl"]
        </div>
    </body>
</html>