function fish_right_prompt
  set -l last_command_status $status

  set -l normal_color  (set_color normal)
  set -l error_color   (set_color $fish_color_error ^/dev/null; or set_color red --bold)

  set -l error  "⨯"

  if test $last_command_status -eq 1
    echo -n -s $error_color $error " " $normal_color
  end

  set_color $fish_color_autosuggestion ^/dev/null; or set_color 555
  date "+%H:%M:%S"
  set_color normal
end
