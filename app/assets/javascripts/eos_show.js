$(document).ready(function() {
  var disqus_shortname = 'rndio';
  (function() {
    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  })();

  (function() {
    var widget = {
      'type': 'bestof',
      'layout': '1',
      'title': 'rnd.io on StumbleUpon',
      'id': 'stblpn-w-1335601374349',
      'topics': ['Technology', 'Science', 'Engineering', 'Startup', 'Computer Science', 'Computer Engineering', 'Software', 'Hardware'],
      'sites': ['rnd.io']
    }
    if (window.STMBLPN && STMBLPN.Widget ) { if (typeof STMBLPN.Widget == 'function') { new STMBLPN.Widget(widget).render(); } else { STMBLPN.push(widget); } } else {var e, e1; STMBLPN = [widget]; e = document.createElement('SCRIPT'); e.type = 'text/javascript'; e.async = true; e.src = e.src = 'http://platform.stumbleupon.com/1/widgets.js'; e1 = document.getElementsByTagName('SCRIPT')[0]; e1.parentNode.insertBefore(e, e1);};})();

  threeSixtyPlayer.config = {
    playNext: false, // stop after one sound, or play through list until end
    autoPlay: false, // start playing the first sound right away
    allowMultiple: true, // let many sounds play at once (false = one at a time)
    loadRingColor: '#ccc',// amount of sound which has loaded
    playRingColor: '#000', // amount of sound which has played
    backgroundRingColor: '#eee', // "default" color shown underneath everything else
    animDuration: 500,
    animTransition: Animator.tx.bouncy// http://www.berniecode.com/writing/animator.html
  }

  // "Unfold" reveals content beneath the fold
  $('.unfold').click(function(event) {
    $('.under_fold').show();
    $(this).hide();
    event.preventDefault();
  });
});

