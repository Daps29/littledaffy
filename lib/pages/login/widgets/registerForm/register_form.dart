import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:little_daffy/pages/login/login_page.dart';
import 'package:little_daffy/pages/login/widgets/input_text_login.dart';
import 'package:little_daffy/utils/app_colors.dart';
import 'package:little_daffy/utils/responsive.dart';
import 'package:little_daffy/widgets/rounded_button.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    
    final Responsive responsive = Responsive.of(context);
    
    return Align(
      alignment: Alignment.bottomCenter,
          child: SafeArea(
          top: false,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
          constraints: BoxConstraints(
            maxWidth: responsive.ip(50) 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("REGISTRO DE USUARIO", 
              style: TextStyle(
                color: AppColors.letras1,
                fontFamily: 'luxia',
                fontSize: responsive.ip(2.2),
                fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: responsive.ip(3),
              ),
              InputTextLogin(iconPath: 'assets/pages/login/icons/avatar.svg', placeholder: "Nombre de usuario"),
              SizedBox(
                height: responsive.ip(2),
              ),
              InputTextLogin(iconPath: 'assets/pages/login/icons/email.svg', placeholder: "Correo electronico"),
              SizedBox(
                height: responsive.ip(2),
              ),
              InputTextLogin(iconPath: 'assets/pages/login/icons/key.svg', placeholder: "Contraseña"),
              SizedBox(
                height: responsive.ip(2),
              ),
              InputTextLogin(iconPath: 'assets/pages/login/icons/key.svg', placeholder: "Confirmar contraseña"),
              SizedBox(
                height: responsive.ip(2),
              ),
              DefaultTextStyle(style: TextStyle(
                fontSize: responsive.ip(1.3),
                color: Theme.of(context).textTheme.subtitle1.color
              ), 
                child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                  children: <Widget>[
                      Checkbox(value: _agree, onChanged: (isChecked){
                        setState(() {
                          _agree = isChecked;
                        });
                      }),
                      Text("Aceptas los"),
                      InkWell(
                        onTap: (){},
                        child: Text("Terminos y servicios", 
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Text(" & "),
                      InkWell(
                        onTap: (){},
                        child: Text("Politicas de privacidad", 
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: responsive.ip(2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end ,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text("← Volver al inicio",style: TextStyle(
                      fontSize: responsive.ip(1.9)
                    ),),
                  ),
                  SizedBox(
                    width: responsive.ip(1.9)
                  ),
                  RoundedButton(
                    label: "Registrarse",
                    //backgroundColor: AppColors.letras,
                    onPressed: () {

                    } 
                  ),
                ],
              ),
              SizedBox(
                height: responsive.ip(2),
              ),
              
            ]
          ),
        ),
      ),
    );
  }
}