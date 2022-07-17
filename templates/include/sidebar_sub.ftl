[#assign children = cmsfn.children(content, "mgnl:page") ]
[#if children?size != 0]
    <div class="elcorr-hr"></div>
[/#if]
[#list children as child]
    <a class="w3-bar-item w3-button elcorr-hover elcorr-child" href="${cmsfn.link(child)}">${child.navigationTitle!child.title!}</a>
[/#list]
