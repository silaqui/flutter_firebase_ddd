import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_bloc.dart';
import 'package:flutterfirebaseddd/application/auth/auth_event.dart';
import 'package:flutterfirebaseddd/application/sing_in_form/bloc.dart';
import 'package:flutterfirebaseddd/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (f) {
                FlushbarHelper.createError(
                    message: f.map(
                  cancelledByUser: (_) => 'Cancelled',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                  serverError: (_) => 'Server error',
                )).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).replace(Routes.notesOverviewPage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            autovalidate: state.showErrorMessage,
            child: ListView(
              children: [
                TextFormField(
                  onChanged: (value) => {
                    context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value))
                  },
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (l) => l.maybeMap(
                          invalidEmail: (_) => 'Invalid email',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  onChanged: (value) => {
                    context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value))
                  },
                  validator: (_) =>
                      context.bloc<SignInFormBloc>().state.password.value.fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Short password',
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed());
                        },
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {
                          context.bloc<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed());
                        },
                        child: const Text('REGISTER'),
                      ),
                    )
                  ],
                ),
                RaisedButton(
                  onPressed: () {
                    context
                        .bloc<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed());
                  },
                  color: Colors.lightBlue,
                  child: Text(
                    "SIGN IN WITH GOOGLE",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 8,
                  ),
                  const LinearProgressIndicator()
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
