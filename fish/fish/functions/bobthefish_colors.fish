function bobthefish_colors -S -d 'Define a custom bobthefish color scheme'

  # Optionally include a base color scheme
  __bobthefish_colors default

  set black1 7d7d7d 
  set black2 494949
  set black3 2d2d2d
  set black4 282828
  set black5 242424

  # Then override everything you want!
  # Note that these must be defined with `set -x`
  set -x color_initial_segment_exit     $black5 ff5050 --bold
  set -x color_initial_segment_su       $black5 ffe191 --bold
  set -x color_initial_segment_jobs     $black5 d991ff --bold

  set -x color_path                     $black2 white 
  set -x color_path_basename            $black2 white 
  set -x color_path_nowrite             $black3 white
  set -x color_path_nowrite_basename    $black3 white --bold

  set -x color_repo                     84ff57 black
  set -x color_repo_work_tree           black black --bold
  set -x color_repo_dirty               ff614f black
  set -x color_repo_staged              ff945e black

  set -x color_vi_mode_default          ff4949 white --bold
  set -x color_vi_mode_insert           $black4 white --bold
  set -x color_vi_mode_visual           db45ef white --bold

  set -x color_vagrant                  8fdaff black
  set -x color_k8s                      385ae2 black --bold
  set -x color_username                 ff475a black 
  set -x color_hostname                 ff475a black
  set -x color_rvm                      fc6868 black --bold
  set -x color_virtualfish              57beff black --bold
  set -x color_virtualgo                brblue black --bold
  set -x color_desk                     57ff7e black --bold
end
