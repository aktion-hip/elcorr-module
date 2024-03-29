[#assign root = cmsfn.root(content, "mgnl:page")!content ]

<!-- language switch: start -->
<div class="elcorr-lang">
    <select name="language" class="elcorr-lang-select" onchange="elcorr_language(this, '${root}')">
        <option value="en" [#if (cmsfn.language() == "en")]selected[/#if]>English</option>
        <option value="uk" [#if (cmsfn.language() == "uk")]selected[/#if]>Ukrainian</option>
    </select>
</div>
<!-- language switch: end -->

<!-- Navbar: start -->
<div class="w3-top">
    <div class="w3-bar elcorr-theme w3-top w3-left-align w3-large">
        <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large elcorr-theme-l1"
            href="javascript:void(0)" onclick="elcorr_open()"><i class="fa fa-bars"></i></a>
        [#if (content.@path == root.@path)]
            <a href="#" class="w3-bar-item w3-button elcorr-theme-l1 elcorr-selected">${root.navigationTitle!root.title!}</a>
        [#else]
            <a href="${cmsfn.link(root)}" class="w3-bar-item w3-button w3-hide-small elcorr-hover-white">${root.navigationTitle!root.title!}</a>
        [/#if]
        [#list cmsfn.children(root, "mgnl:page") as child ]
            [#if (content.@path == child.@path)]
                <a href="#" class="w3-bar-item w3-button elcorr-theme-l1 elcorr-selected">${child.navigationTitle!child.title!}</a>
            [#elseif navfn.isOpen(content, child)]
                <a href="${cmsfn.link(child)}" class="w3-bar-item w3-button elcorr-theme-l1 elcorr-selected-sub">${child.navigationTitle!child.title!}</a>
            [#else]
                <a href="${cmsfn.link(child)}" class="w3-bar-item w3-button w3-hide-small elcorr-hover-white">${child.navigationTitle!child.title!}</a>
            [/#if]
        [/#list]
    </div>
</div>
<!-- Navbar: end -->

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="elcorr_close()" style="cursor:pointer" title="close side menu"
    id="elcorrOverlay">
</div>
