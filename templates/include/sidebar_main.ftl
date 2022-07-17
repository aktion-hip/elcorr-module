<a href="javascript:void(0)" onclick="elcorr_close()"
    class="w3-right w3-xlarge w3-padding-large elcorr-hover w3-hide-large" title="Close Menu">
    <i class="fa fa-remove"></i>
</a>
<h4 class="w3-bar-item"><b>Menu</b></h4>
<a class="w3-bar-item w3-button elcorr-hover" href="${cmsfn.link(root)}">${root.navigationTitle!root.title!}</a>
[#list cmsfn.children(root, "mgnl:page") as child ]
    [#if (content.@path != child.@path)]
        <a class="w3-bar-item w3-button elcorr-hover" href="${cmsfn.link(child)}">${child.navigationTitle!child.title!}</a>
    [/#if]
[/#list]
