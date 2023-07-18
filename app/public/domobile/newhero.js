
// EVENT AU CLIC SUR LA RACE/CLASSE/DIEU
  document.getElementById('raceNewHero').addEventListener("click", showRaces);
  document.getElementById('classNewHero').addEventListener("click", showClasses);
  document.getElementById('godNewHero').addEventListener("click", showGods);
// EVENT AU CLIC SUR ELEMENTS DE LISTES
  document.getElementById('race-0').addEventListener("click", test);

  function test() {
    alert("coucou");
  }


  // Affichage/Masquage des listes
  function showRaces() {
    document.getElementById('racesListNewHero').style.display='block';
    document.getElementById('classesListNewHero').style.display='none';
    document.getElementById('godsListNewHero').style.display='none';

  }
  // Affichage/Masquage des listes
  function showClasses() {
    document.getElementById('racesListNewHero').style.display='none';
    document.getElementById('classesListNewHero').style.display='block';
    document.getElementById('godsListNewHero').style.display='none';
  }
  // Affichage/Masquage des listes
  function showGods() {
    document.getElementById('racesListNewHero').style.display='none';
    document.getElementById('classesListNewHero').style.display='none';
    document.getElementById('godsListNewHero').style.display='block';
  }
