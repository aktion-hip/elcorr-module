<div class="elcorr-content">
    <div class="elcorr-teaser w3-row w3-padding-64">
        <div class="w3-twothird w3-container">
            <h1 class="elcorr-text-teal">${content.title!"???"}</h1>
            [#if content.teaser?has_content]
                ${cmsfn.decode(content).teaser!}
            [/#if]                    
        </div>
    </div>
    [@cms.area name="section"/]
</div>