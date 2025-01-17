class MockDatabase {
  // Simulação de um banco de dados de usuários
  static final Map<String, String> _users = {
    'usuario1@example.com': 'senha123',
    'usuario2@example.com': 'senha456',
  };

  // Verifica se o usuário existe
  static bool userExists(String email) {
    return _users.containsKey(email);
  }

  // Verifica se a senha está correta
  static bool isPasswordCorrect(String email, String password) {
    return _users[email] == password;
  }

  // Adiciona um novo usuário
  static void addUser(String email, String password) {
    _users[email] = password;
  }

  // Atualiza a senha de um usuário
  static void updatePassword(String email, String newPassword) {
    if (_users.containsKey(email)) {
      _users[email] = newPassword;
    }
  }
}