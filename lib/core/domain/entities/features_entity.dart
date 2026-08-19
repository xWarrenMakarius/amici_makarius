import '../../resources/keys.dart';

class FeaturesEntity {

  FeaturesEntity({
    required this.specialFinalCoaching,
  });

  final bool specialFinalCoaching;

  Map<String, dynamic> toJson() {
    return {
      Keys.specialFinalCoaching: specialFinalCoaching,
    };
  }
   
}