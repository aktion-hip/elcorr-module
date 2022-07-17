<footer id="elcorrFooter" class="elcorrFooter">
    <div class="elcorr-footer-line w3-container">
        <span>
            [#if root.footerText?has_content]
                [#if root.footerLink?has_content]
                    [#attempt]
                        <a href="${cmsfn.link(cmsfn.contentById(root.footerLink))}">${root.footerText}</a>
                      [#recover]
                        ${root.footerText}
                      [/#attempt]                        
                [#else]
                    ${root.footerText}
                [/#if]
            [/#if]
        </span>
        <span class="copy">
            <a href="${cmsfn.link(root)}">&copy;&nbspElCorr</a>
        </span>
    </div>
</footer>