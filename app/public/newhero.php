<?php
error_reporting(-1); // reports all errors
ini_set("display_errors", "1"); // shows all errors
ini_set("log_errors", 1);
ini_set("error_log", "/tmp/php-error.log");

 include('newhero_functions.inc'); ?>

<!-- BLOC D'INTERFACE -->
<h3>Nouvelle interface de création de personnage <br /> en travaux...</h3>
<div style="
  border: 2px solid black;
  display: grid;
  grid-template-rows: 100px 300px 200px;
">
    <!-- HEADER D'INTERFACE -->
    <section
    style="
      border: 1px solid black;
      display: grid;
      grid-row: 1;
      grid-template-columns: 33.3333333% 33.3333333% 33.3333333%;
    ">
    <div id="raceNewHero" class="" style="
      border: 1px solid black;
    ">
      <h2 style="text-align: center;">Races</h2>
    </div>
    <div id="classNewHero" class="" style="
      border: 1px solid black;
    ">
      <h2 style="text-align: center;">Classes</h2>
    </div>
    <div id="godNewHero" class="" style="
      border: 1px solid black;
    ">
      <h2 style="text-align: center;">Dieux</h2>
    </div>



    </section>
    <!-- BODY D'INTERFACE -->
    <section
    style="
      border: 1px solid black;
      display: grid;
      grid-row: 2;
      grid-template-columns: 70% 30%;
    ">
        <div id="descNewHero" style="
        border: 1px solid black;
        grid-column: 1;
        overflow-y: scroll;
        ">
        </div>
        <div id="listNewHero" style="
        border: 1px solid black;
        grid-column: 2;
        overflow-y: scroll;
        ">
          <h4>Liste</h4>
          <ul id="racesListNewHero" style="
            display: none;
          ">
            <?php getRacesList(); ?>
          </ul>
          <ul id="classesListNewHero" style="
            display: none;
          ">
            <?php getClassesList(); ?>
          </ul>
          <ul id="godsListNewHero" style="
            display: none;
          ">
            <?php getGodsList(); ?>
          </ul>
    </div>


    </section>
    <!-- FOOTER D'INTERFACE -->
    <section id="recapNewHero"
    style="
      border: 1px solid black;
      display: grid;
      grid-row: 3;
      grid-template-columns: 100%;
    ">
    <h4>Récapitulatif</h4>
    <div class="" style="
      display: grid;
      grid-template-columns: 50% 50%;
    ">
      <ul style="
        grid-column: 1;
      ">
        <li>Race</li>
        <li>Classe</li>
        <li>Dieu</li>
      </ul>
      <ul style="
        grid-column: 2;
      ">
        <li>Att</li>
        <li>Def</li>
        <li>Ini</li>
        <li>End</li>
        <li>Puiss</li>
        <li>Char</li>
      </ul>
    </div>

    </section>
</div>
