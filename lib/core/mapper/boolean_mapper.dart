bool toBool(dynamic value) {
  if (value is bool) {
    return value;
  }

  if (value is String) {
    switch (value.toLowerCase()) {
      case 'true':
        return true;
      case 'false':
        return false;
      default:
        return false;
    }
  }

  if (value is num) {
    switch (value) {
      case 0:
        return false;
      case 1:
        return true;
      default:
        return false;
    }
  }

  return false;
}
