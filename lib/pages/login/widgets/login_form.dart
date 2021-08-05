import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:little_daffy/utils/app_colors.dart';
import 'package:little_daffy/utils/responsive.dart';
import 'package:little_daffy/pages/home/principal.dart';
import 'package:little_daffy/widgets/circle_button.dart';
import 'package:little_daffy/widgets/rounded_button.dart';
import 'package:little_daffy/pages/login/widgets/input_text_login.dart';
import 'package:little_daffy/pages/login/widgets/registerForm/register_page.dart';
import 'package:little_daffy/pages/login/widgets/forgotPassword/password_page.dart';

class LoginForm extends StatelessWidget {


  const LoginForm({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    final Responsive responsive = Responsive.of(context);
    
    return Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
          top: false,
          child: Container(
          width: responsive.ip(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InputTextLogin(iconPath: 'assets/pages/login/icons/email.svg', placeholder: "Correo electronico"),
              SizedBox(
                height: responsive.ip(2),
              ),
              InputTextLogin(iconPath: 'assets/pages/login/icons/key.svg', placeholder: "Contraseña"),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text("¿Olvidaste tu contraseña?", 
                    style: TextStyle(fontFamily: 'luxia', color: Colors.blue),
                  ), 
                  onPressed: (){
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordPage()),
                );
                  }
                ),
              ),
              SizedBox(
                height: responsive.ip(2),
              ),
              RoundedButton(
                label: "Ingresar",
                //backgroundColor: AppColors.letras,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Principal()),
                  );
              } ),
              SizedBox(
                height: responsive.ip(3.3),
              ),
              Text("───────────  O  ───────────", 
                style:TextStyle(
                  color: AppColors.gray,
                  fontWeight: FontWeight.bold,
                  fontSize: responsive.ip(1.2)
                ),
              ),
              SizedBox(
                height: responsive.ip(1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleButton(
                    size: responsive.ip(7),
                    backgroundColor: Color(0xff448AFF),
                    iconPath: "assets/pages/login/icons/facebook.svg",
                    onPressed: () { 

                    },
                  ),
                  SizedBox(
                    width: responsive.ip(2),
                  ),
                  CircleButton(
                    size: responsive.ip(7),
                    backgroundColor: Color(0xffFF1744),
                    iconPath: "assets/pages/login/icons/google.svg",
                    onPressed: () { 

                    },
                  )
                ],
              ),
              SizedBox(
                    height: responsive.ip(2),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("¿No tienes una cuenta?"),
                  CupertinoButton(
                    child: Text("Registrate", 
                    style: TextStyle(
                      fontFamily: 'luxia', 
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                    ), 
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                  )
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}