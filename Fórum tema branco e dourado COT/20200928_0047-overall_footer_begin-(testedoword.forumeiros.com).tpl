<!-- BEGIN html_validation -->
<div>
    <div>
        <div>
            <div>
 
<div>
    <div>
        <div>
            <div>
                <div>
                    <div>
                        <div>
                            <div>
<!-- END html_validation -->
                            </div>
                        </div>
                    </div>
                </div>
 
                <div id="{ID_RIGHT}">
                    <!-- BEGIN giefmod_index2 -->
                    {giefmod_index2.MODVAR}
                    <!-- BEGIN saut -->
                    <div style="height:{SPACE_ROW}px"></div>
                    <!-- END saut -->
                    <!-- END giefmod_index2 -->
                </div>
            </div>
        </div>
    </div>
</div>
            </div>
        </div>
    </div>
</div>
 
<div id="page-statistics">
<div class="statistics">
    <div class="wrap">
        <div class="statistics-item" id="statistics-item-1">
          <i class="fas fa-comments"></i>
            {TOTAL_POSTS}
        </div>
        <div class="statistics-item" id="statistics-item-2">
          <i class="fas fa-users"></i>
            {TOTAL_USERS}
        </div>
        <div class="statistics-item" id="statistics-item-3">
          <i class="fas fa-user-check"></i>
            {NEWEST_USER}
        </div>
    </div>
</div>
<script type="text/javascript">
  $(function statsperso() {
            var span5 = document.querySelector("#statistics-item-1").innerText.split(" ", 10);
            document.querySelector("#statistics-item-1").innerHTML = `<i class="fas fa-comments"></i> <div class="stats-item-text-1">Mensagens Enviadas</div> <div class="stats-item-number-1">${span5[7]}</div>`;
            var span6 = document.querySelector("#statistics-item-2").innerText.split(" ", 10);
            document.querySelector("#statistics-item-2").innerHTML = `<i class="fas fa-users"></i> <div class="stats-item-text-2">Militares ativos</div> <div class="stats-item-number-2">${span6[1]}</div>`;
            var span7 = document.querySelector("#statistics-item-3").innerText.split(" ", 10);
            document.querySelector("#statistics-item-3").innerHTML = `<i class="fas fa-user-check"></i> <div class="stats-item-text-3">Novo Militar</div> <div class="stats-item-number-3">${span7[8]}</div>`;
            var span9 = document.querySelector("#statistics-item-4").innerText.split(" ", 15);
            document.querySelector("#statistics-item-4").innerHTML = `<i class="fas fa-user-clock"></i> <div class="stats-item-text-4">Recorde de Militares Simultâneos</div> <div class="stats-item-number-4">${span9[7]}</div>`;
       
    })
</script>
<div id="page-footer">
    <div class="wrap">
        <ul class="footerbar-system">
            <li class="footer-home">
                <a class="icon-home" href="{U_INDEX}" accesskey="h"><i class="ion-ios-home"></i>{L_HOME}</a>
            </li>
            <li class="rightside">
<!-- BEGIN html_validation -->
            </li>
        </ul>
    </div>
</div>
<!-- END html_validation -->