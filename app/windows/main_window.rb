class MainWindow < Bowline::Desktop::WindowManager
  setup!
  self.file   = :index
  set_size(450, 482)
  center
  enable_developer
  on_load { show }
end