[#assign children = cmsfn.children(content, "mgnl:page") ]
[#if children?size != 0]
    <div class="elcorr-hr"></div>
    [#list children as child]
        <a class="w3-bar-item w3-button elcorr-hover elcorr-child" href="${cmsfn.link(child)}">${child.navigationTitle!child.title!}</a>
    [/#list]
[#else]
    [#assign subChildren = cmsfn.children(cmsfn.parent(content, "mgnl:page")!, "mgnl:page")]
    [#if subChildren?size != 0]
        <div class="elcorr-hr"></div>
        [#list subChildren as child]
            [#if (content.@path != child.@path)]
                <a class="w3-bar-item w3-button elcorr-hover elcorr-child" href="${cmsfn.link(child)}">${child.navigationTitle!child.title!}</a>
            [/#if]
        [/#list]
    [/#if]
[/#if]
