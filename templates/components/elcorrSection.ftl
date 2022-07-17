<div class="w3-row elcorr-padding-64">
  <div class="w3-twothird w3-container">
    [#if content.headline?has_content]
      <${content.headlineLevel}>${content.headline!}</${content.headlineLevel}>
    [/#if]
    [#if content.text?has_content]
      ${cmsfn.decode(content).text!}
    [/#if]
  </div>
  <div class="w3-third w3-container">
  </div>
</div>

