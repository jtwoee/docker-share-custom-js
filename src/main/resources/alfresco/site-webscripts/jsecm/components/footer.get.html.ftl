<@markup id="html-footer" action="replace" target="html">

    <@uniqueIdDiv>
        <#assign fc=config.scoped["Edition"]["footer"]>
    <div class="footer ${fc.getChildValue("css-class")!"footer-com"}">
         <span class="copyright">
            <a href="#" </a>
             <#if licenseHolder != "" && licenseHolder != "UNKNOWN">
                 <span class="licenseHolder">${msg("label.licensedTo")} </span><br>
             </#if>
            <span>&copy; ShySoft 2016 All rights reserved. </span>
         </span>
    </div>
    </@>
</@>

</@markup>