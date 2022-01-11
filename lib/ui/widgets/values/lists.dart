part of values;

class Lists {
  static List menuItems = [
    'assets/icons/ic_diagnostics.svg',
    'assets/icons/ic_medical.svg',
    'assets/icons/ic_care.svg',
  ];



  static List<Color> menuItemColors = [
    AppColors.menuMedicalItemColor,
    AppColors.menuDiagnosticItemColor,
    AppColors.menuCareItemColor,
    AppColors.menuPharmacyItemColor,
    AppColors.menuAllItemColor,
  ];

  static List<String> menuItemLabels = [
    'Identification',
    'Medical',
    'Financial',
    'Proof of Insurance',
    'Memberships/Subscriptions',
    'Fidelity Cards',
    'Online Services',
  ];



  static List pharmacyList = [
    {'title': 'Headache', 'icon': 'assets/icons/ic_bundle.svg'},
    {'title': 'Nausea', 'icon': 'assets/icons/ic_pharmacy.svg'},
    {'title': 'Dug', 'icon': 'assets/icons/ic_care.svg'},
    {'title': 'Headache', 'icon': 'assets/icons/ic_bundle.svg'},
    {'title': 'Nausea', 'icon': 'assets/icons/ic_pharmacy.svg'},
    {'title': 'Dug', 'icon': 'assets/icons/ic_care.svg'},
  ];
}
