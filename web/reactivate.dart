import 'dart:html';
import 'dart:js';

void main() {
  JsObject React = context['React'];
  JsObject ReactDOM = React['DOM'];
  JsObject divAttributes = new JsObject.jsify({
    'className': 'commentBox'
  });
  JsObject commentBoxDescription = new JsObject.jsify({
    'displayName': 'CommentBox',
    'render': () => ReactDOM.callMethod('div', 
        [divAttributes, 
         ReactDOM.callMethod('h2', [{}, 'Comments']),
         'These are comments, are they not?'
         ])
  });
  var CommentBox = React.callMethod('createClass', [commentBoxDescription]);
  JsObject commentBoxInstance = new JsObject(CommentBox, [null]);
  Element div = querySelector('#reactivate_here_id');
  React.callMethod('renderComponent', [commentBoxInstance, div]);
}
