<main id="index">
    <div class="main-inner">
        <!-- BEGIN message_admin_index -->
        <div class="block introduction">
            <!-- BEGIN message_admin_titre -->
            <div class="block-header">{message_admin_index.message_admin_titre.MES_TITRE}</div>
            <!-- END message_admin_titre -->

            <!-- BEGIN message_admin_txt -->
            <div class="block-content">{message_admin_index.message_admin_txt.MES_TXT}</div>
            <!-- END message_admin_txt -->
        </div>
        <!-- END message_admin_index -->

        {CHATBOX_TOP}
        {BOARD_INDEX}

        <!-- BEGIN disable_viewonline -->
      
    <div class="block-fab">
            <div class="stats-tabs">
                  
                  <input id="tab1" type="radio" name="tabs" checked>
                  <label for="tab1">USUÁRIOS</label>
                
                  <input id="tab2" type="radio" name="tabs">
                  <label for="tab2">ANIVERSÁRIOS</label>
                
                  <input id="tab3" type="radio" name="tabs">
                  <label for="tab3">GRUPOS</label>
                    
                  <input id="tab4" type="radio" name="tabs">
                  <label for="tab4">90 HORAS</label>
                
                  <section id="content1">
                    <p>
                      {LOGGED_IN_USER_LIST}
                    </p>
                  </section>
                
                  <section id="content2">
                    <p>
              {L_WHOSBIRTHDAY_TODAY}
                    </p>
                    <p>
                      {L_WHOSBIRTHDAY_WEEK}
                    </p>
                  </section>
                
                  <section id="content3">
                    <p>
                      <div class="legend">{GROUP_LEGEND}</div>
                    </p>
                  </section>  
                      
                  <section id="content4">
                    <p>
                      {L_CONNECTED_MEMBERS}
                    </p>
                  </section>    
            </div>
    </div>
                    <br/>
                    <br/>
        <!-- END disable_viewonline -->
                        
<div id="ds-rank">
<div class="base-ranking curso"><div class="topo-ranking"><div class="icon-texto"><div class="icon" title="Oficial"></div><div class="texto"><div class="titulo">Praça Destaque</div><div class="desc">Por ser o praça com maior proatividade.</div></div></div><div class="based-palco"><div class="palco"><div class="user one"></div></div><div class="info"><div class="user"><div class="ordem">1º </div><div class="nome">ARMSystem</div></div></div></div></div><div class="base-usuarios"></div><div class="base-final"></div></div>
<div class="base-ranking pres"><div class="topo-ranking"><div class="icon-texto"><div class="icon" title="Oficial"></div><div class="texto"><div class="titulo">Oficial Destaque</div><div class="desc">Pelo maior número de PL's aprovadas.</div></div></div><div class="based-palco"><div class="palco"><div class="user two"></div></div><div class="info"><div class="user"><div class="ordem">1º </div><div class="nome">ARMSystem</div></div></div></div></div><div class="base-usuarios"></div><div class="base-final"></div></div>
<div class="base-ranking cmdt"><div class="topo-ranking"><div class="icon-texto"><div class="icon" title="Oficial"></div><div class="texto"><div class="titulo">Executivo Destaque</div><div class="desc">Pelo destaque nos QG's.</div></div></div><div class="based-palco"><div class="palco"><div class="user three"></div></div><div class="info"><div class="user"><div class="ordem">1º </div><div class="nome">ARMSystem</div></div></div></div></div><div class="base-usuarios"></div><div class="base-final"></div></div>
</div>
                    
    </div>
</main>

<aside id="sidebar" class="sidebar-home">
    <!-- BEGIN giefmod_index1 -->
    {giefmod_index1.MODVAR}
    <!-- BEGIN saut -->
    <div style="height:{SPACE_ROW}px"></div>
    <!-- END saut -->
    <!-- END giefmod_index1 -->
</aside>

<script type="text/javascript">
    $(document).ready(function() {
        if ($('#sidebar').is(':empty')) {
            $('#index').css('margin', 0);
            $('#sidebar').hide();
        }
    });
</script>
          
          <style>

.block-fab {
    background-color: rgb(0 0 0 / 30%);
    border-color: rgba(0,0,0,0.05);
    border-radius: 3px;
    border-style: solid;
    border-width: 1px 0 0;
    padding: 12px 18px;
    background-color: #fff;
    box-shadow: inset 0 3px rgb(255 255 255 / 20%), inset 0 -5px rgb(0 0 0 / 10%), inset 0 -10px rgb(0 0 0 / 3%), inset 0 0 0 1px rgb(0 0 0 / 25%);
}
          </style>
