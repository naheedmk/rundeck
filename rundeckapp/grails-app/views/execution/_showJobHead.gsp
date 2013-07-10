<g:if test="${scheduledExecution}">
    <div class="jobInfoSection">
        Job:
        <span class="jobInfoPart secondary">
            <g:link controller="scheduledExecution" action="show"
                    id="${scheduledExecution.extid}"
                    class=" ${execution?.status == 'true' ? 'jobok' : null == execution?.dateCompleted ? 'jobrunning' : execution?.cancelled ? 'jobwarn' : 'joberror'}" absolute="${absolute ? 'true' :'false'}">
                <span class="jobName">${scheduledExecution?.jobName.encodeAsHTML()}</span></g:link>

            <span class="jobDesc">${scheduledExecution?.description.encodeAsHTML()}</span>
            <span class="jobGroup">
                <span class="grouplabel">
                    <g:link controller="menu" action="jobs"
                            params="${[groupPath: scheduledExecution.groupPath]}"
                            title="${'View ' + g.message(code: 'domain.ScheduledExecution.title') + 's in this group'}"
                            absolute="${absolute ? 'true' : 'false'}">
                        <g:if test="${!noimgs}"><img
                                src="${resource(dir: 'images', file: 'icon-small-folder.png')}"
                                width="16px" height="15px" alt=""/></g:if>
                        ${scheduledExecution.groupPath}
                    </g:link>
                </span>
            </span>
        </span>
    </div>
</g:if>
