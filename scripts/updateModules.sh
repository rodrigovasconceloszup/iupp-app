echo pulling checkout
cd iupp-checkout
git pull
echo flutter clean and pub get
flutter clean && flutter pub get
cd ..

echo pulling components
cd iupp-components
git pull
echo flutter clean and pub get
flutter clean && flutter pub get
cd ..

echo pulling core
cd iupp-core
git pull
echo flutter clean and pub get
flutter clean && flutter pub get
cd .. 

echo pulling marketplace
cd iupp-marketplace-buyer
git pull
echo flutter clean and pub get
flutter clean && flutter pub get
cd ..

echo pulling onboarding
cd iupp-onboarding
git pull
echo flutter clean and pub get
flutter clean && flutter pub get
cd ..