import 'dart:html';
import 'dart:js';

void main() {
  JsObject React = context['React'];
  JsObject ReactDOM = React['DOM'];
  JsObject listAttributes = new JsObject.jsify({
    'className': 'commentList'
  });
  JsObject formAttributes = new JsObject.jsify({
    'className': 'commentForm'
  });
  JsObject boxAttributes = new JsObject.jsify({
    'className': 'commentBox'
  });
  JsObject commentListDescription = new JsObject.jsify({
    'render': () => ReactDOM.callMethod('div', 
        [listAttributes, 'Hello, world! I am a comment list.'])
  });
  JsObject commentFormDescription = new JsObject.jsify({
    'render': () => ReactDOM.callMethod('div', 
        [listAttributes, 'Hello, world! I am a comment form.'])
  });
  JsObject CommentList = React.callMethod('createClass', [commentListDescription]);;
  JsObject CommentForm = React.callMethod('createClass', [commentFormDescription]);; 
  JsObject commentBoxDescription = new JsObject.jsify({
    'displayName': 'CommentBox',
    'render': () => ReactDOM.callMethod('div', 
        [boxAttributes, 
         ReactDOM.callMethod('h2', [{}, 'Comments']),
         new JsObject(CommentList, [null]),
         new JsObject(CommentForm, [null])
         ])
  });
  JsObject CommentBox = React.callMethod('createClass', [commentBoxDescription]);
  JsObject commentBoxInstance = new JsObject(CommentBox, [null]);
  Element div = querySelector('#reactivate_here_id');
  React.callMethod('renderComponent', [commentBoxInstance, div]);
}
