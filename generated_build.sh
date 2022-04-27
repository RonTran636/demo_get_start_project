echo "Localization generation ...."
flutter pub run easy_localization:generate -S assets/translations -f keys -O lib/resources/ -o strings.dart

echo "Build runner generation code ..."
flutter packages pub run build_runner build --delete-conflicting-outputs