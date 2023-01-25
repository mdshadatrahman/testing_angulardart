import 'package:angular_app/hero.dart';
import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';

@Component(
  selector: 'my-app',
  directives: [formDirectives],
  template: '''
    <h1>{{title}}</h1>
    <h2>{{hero.name}}</h2>
    <div><label>id: </label>{{hero.id}}</div>
    <div>
      <label>name: </label>
        <input [ngModel]="hero.name" placeholder="name">
    </div>
  ''',
)
class AppComponent {
  final title = 'Tour of Heros';

  Hero hero = Hero(id: 1, name: 'Windstorm');
}
