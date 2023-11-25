import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_button/my_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('image/glogo.png'),
            text: Text(
              'Login with Google',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            color: Colors.white,
            radius: 4,
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('image/flogo.png'),
                  Text(
                    'Login with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('image/flogo.png'),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF334D92),
              ),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ButtonTheme(
            height: 50,
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  Text(
                    'Login with Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
