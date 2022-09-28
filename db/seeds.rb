# ゲストログイン用ユーザー
User.create!([
  {email: "test@example.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, first_name: "guest", last_name: "guest", image: nil}
])
