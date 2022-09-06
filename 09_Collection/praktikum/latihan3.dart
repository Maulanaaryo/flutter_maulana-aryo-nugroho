void main(List<String> args) {
  if (args.length > 0 && args.length == 3) {
    switch (args[1].toLowerCase()) {
      case "+":
        print('${int.parse(args[0]) + int.parse(args[2])}');
        break;
      case "-":
        print('${int.parse(args[0]) - int.parse(args[2])}');
        break;
      case "x":
        print('${int.parse(args[0]) * int.parse(args[2])}');
        break;
      case "/":
        print('${int.parse(args[0]) / double.parse(args[2])}');
        break;
      default:
        print('Flag salah!');
    }
  } else {
    print('Perintah tidak sesuai!');
  }
}
