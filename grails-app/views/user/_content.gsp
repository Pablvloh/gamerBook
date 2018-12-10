
        <g:each in="${content}">
        <div class="card pink darken-4">
            <div class="card-content white-text">
                <p style="color:white;">${it.fecha.format("dd MMMM yyyy")} a las ${it.fecha.format("hh:MM:ss")}</p>
                <p style="color:white;">${it.content}</p>
            </div>
        </div>
        </g:each>