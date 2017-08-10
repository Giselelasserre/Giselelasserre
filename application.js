"use strict"; // Do not remove

function hasNewMessage() {
  return Math.random() < 0.2;
}

function _sample(array) {
  return array[Math.floor(Math.random() * array.length)];
}

function newMessage() {
  var senders = [ 'GitHub', 'Le Wagon', 'Google', 'Apple' ];
  var subjects = [ 'You Got Mail!', 'Welcome!', 'You won\'t believe it...', 'Past due invoice' ];

  return {
    sender: _sample(senders),
    subject: _sample(subjects)
  }
}

function appendMessageToDom(message) {
  var line = '<div class= "row message unread"><div class="col-xs-3">'
    + message['sender']
    + '</div><div class="col-xs-9">'
    + message['subject']
    + '</div></div>';
  $('#inbox').prepend(line);
}

function updateUnreadCount() {
  var unreadCount = $('.message.unread').length;
  $('#count').text('(' + unreadCount + ')');
  document.title = '(' + unreadCount + ') Fake Inbox';
}

function refresh() {
  if (hasNewMessage()) {
    appendMessageToDom(newMessage());
    updateUnreadCount();
  }
}

$(document).ready(function () {
  setInterval(refresh, 1000); // Every 1 second, the `refresh` function is called.
});






// Do not mind this below. Used for `rake` only.
try {
  if (module) {
    module.exports = {
      hasNewMessage: hasNewMessage,
      newMessage: newMessage
    };
  }
} catch(ReferenceError) {
  // In-browser
}
