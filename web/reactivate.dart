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
    'render': () => ReactDOM.callMethod('div', [divAttributes, 'Hello, world! I am a comment box.'])
  });
  var CommentBox = React.callMethod('createClass', [commentBoxDescription]);
  JsObject commentBoxInstance = new JsObject(CommentBox, [null]);
  Element div = querySelector('#reactivate_here_id');
  React.callMethod('renderComponent', [commentBoxInstance, div]);
}
