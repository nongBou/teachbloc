abstract class Response {}

class ResSuccess extends Response {
  final dynamic data;
  ResSuccess({required this.data});
}

class ResError extends Response {
  final String error;
  ResError({required this.error});
}
