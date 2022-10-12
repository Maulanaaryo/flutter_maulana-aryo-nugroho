# (24) Storage

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 

1. Buatlah halaman Register dan halaman Home, dengan ketentuan sebagai berikut:
- Pada halaman Register, buat tombol Register dan 4 kolom untuk nama, email, nomor telepon, dan password.
- Saat menekan tombol Register, simpan data email (String), nama (String) dan isLogin (boolean/bool) ke dalam shared preference dan navigasi ke halaman Home.
- Pada halaman Home, buat teks untuk menampilkan nama dan email & buat tombol log out.
- Saat menekan tombol log out, hapus semua isi di shared preference & navigasi ke halaman Register. 
- Gunakan state management provider untuk menampilkan nama dan email di halaman Home.

2. Buatlah halaman Register dan halaman Home, dengan ketentuan sebagai berikut:
- Pada halaman Register, buat tombol Register dan 4 kolom untuk nama, email, nomor telepon, dan password.
- Saat menekan tombol Register, simpan data email (String), nama (String) dan isLogin (boolean/bool) ke dalam shared preference dan navigasi ke halaman Home.
- Pada halaman Home, buat teks untuk menampilkan nama dan email & buat tombol log out.
- Saat menekan tombol log out, hapus semua isi di shared preference & navigasi ke halaman Register. 
- Gunakan state management bloc untuk menampilkan nama dan email di halaman Home.

## 📒 Task_01
### [Task_01 🗒](#descriptive-)

Membuat halaman register dengan 4 textfield yaitu nama, email, nomor telepon dan password serta membuat tombol button untuk mengarahkan ke halaman homepage
```dart
Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    label: Text('Name')),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Name!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                    label: Text('Email')),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Email!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.phone),
                  label: Text('Phone Number'),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Phone Number!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<RegisterProvider>(
                builder: (context, value, child) {
                  return TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: value.toogle,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      icon: const Icon(Icons.phone),
                      label: const Text('Password'),
                      suffixIcon: IconButton(
                        onPressed: () {
                          value.toogleTheme();
                        },
                        icon: Icon(value.toogle
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    validator: (password) {
                      if (password != null && password.length < 5) {
                        return 'Enter min. 5 characters';
                      }
                      return null;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    final isValid = formKey.currentState!.validate();
                    String username = _nameController.text;
                    String email = _emailController.text;

                    if (isValid) {
                      loginProvider.addBool(false);
                      loginProvider.addName(username);
                      loginProvider.addEmail(email);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (route) => false);
                    }
                  },
                  child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
```
![image](/24_Storage/screenshot/image_02.png)

Selanjutnya mengarahkan ke tombol home page yang berisi nama dan email, serta terdapat tombol sign up untuk kembali ke halaman register

```dart
late SharedPreferences logindata;
  String username = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<RegisterProvider>(context);
    loginProvider.initial();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<RegisterProvider>(
              builder: (context, value, child) {
                return Text(
                  'Hello, ${value.username}',
                  style: const TextStyle(fontSize: 30),
                );
              },
            ),
            Consumer<RegisterProvider>(
              builder: (context, value, child) {
                return Text(value.email);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                loginProvider.deleteName(username);
                loginProvider.deleteEmail(email);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegistrasiPage(),
                    ));
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
```
![image](/24_Storage/screenshot/image_03.png)

