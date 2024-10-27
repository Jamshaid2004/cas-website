//Class For each service product
class ServiceProduct {
  String serviceImage;
  String serviceName;
  String serviceDescription;
  String pricingTiers;
  String keyFeatures;
  String estimatedTimeline;
  ServiceProduct({
    required this.serviceImage,
    required this.serviceName,
    required this.serviceDescription,
    required this.pricingTiers,
    required this.keyFeatures,
    required this.estimatedTimeline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceImage': serviceImage,
      'serviceName': serviceName,
      'serviceDescription': serviceDescription,
      'pricingTiers': pricingTiers,
      'keyFeatures': keyFeatures,
      'estimatedTimeline': estimatedTimeline,
    };
  }

  factory ServiceProduct.fromMap(Map<String, dynamic> map) {
    return ServiceProduct(
      serviceImage: map['serviceImage'] as String,
      serviceName: map['serviceName'] as String,
      serviceDescription: map['serviceDescription'] as String,
      pricingTiers: map['pricingTiers'] as String,
      keyFeatures: map['keyFeatures'] as String,
      estimatedTimeline: map['estimatedTimeline'] as String,
    );
  }
}
