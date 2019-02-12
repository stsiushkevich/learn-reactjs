<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

<u:resource type="script" root="/resources/js/plugins" names="jquery.waitforimages.min.js, jquery.prettyembed.min.js"/>

<script type="application/javascript">
    (function($){
        $(document).ready(function() {
            $('#hooks-introduction-1').prettyEmbed({
                videoID: 'dpw9EHDh2bM',
                useFitVids: true,
                playerControls: false,
                playerInfo: false
            });
        });
    })(jQuery);
</script>