#!/bin/bash

message=""
case $1 in

  art)
    message="Improve structure / format of the code. $2"
    ;;

  zap)
    message="Improve performance. $2"
    ;;

  fire)
    message="Remove code or files. $2"
    ;;

  bug)
    message="Fix a bug. $2"
    ;;

  ambulance)
    message="Critical hotfix. $2"
    ;;

  sparkles)
    message="Introduce new features. $2"
    ;;

  memo)
    message="Add or update documentation. $2"
    ;;

  rocket)
    message="Deploy stuff. $2"
    ;;

  lipstick)
    message="Add or update the UI and style files. $2"
    ;;

  tada)
    message="Begin a project. $2"
    ;;

  white_check_mark)
    message="Add, update, or pass tests. $2"
    ;;

  lock)
    message="Fix security issues. $2"
    ;;

  closed_lock_with_key)
    message="Add or update secrets. $2"
    ;;

  bookmark)
    message="Release / Version tags. $2"
    ;;

  rotating_light)
    message="Fix compiler / linter warnings. $2"
    ;;

  construction)
    message="Work in progress. $2"
    ;;

  green_heart)
    message="Fix CI Build. $2"
    ;;

  arrow_down)
    message="Downgrade dependencies. $2"
    ;;

  arrow_up)
    message="Upgrade dependencies. $2"
    ;;

  pushpin)
    message="Pin dependencies to specific versions. $2"
    ;;

  construction_worker)
    message="Add or update CI build system. $2"
    ;;

  chart_with_upwards_trend)
    message="Add or update analytics or track code. $2"
    ;;

  recycle)
    message="Refactor code. $2"
    ;;

  heavy_plus_sign)
    message="Add a dependency. $2"
    ;;

  heavy_minus_sign)
    message="Remove a dependency. $2"
    ;;

  wrench)
    message="Add or update configuration files. $2"
    ;;

  hammer)
    message="Add or update development scripts. $2"
    ;;

  globe_with_meridians)
    message="Internationalization and localization. $2"
    ;;

  pencil2)
    message="Fix typos. $2"
    ;;

  poop)
    message="Write bad code that needs to be improved. $2"
    ;;

  rewind)
    message="Revert changes. $2"
    ;;

  twisted_rightwards_arrows)
    message="Merge branches. $2"
    ;;

  package)
    message="Add or update compiled files or packages. $2"
    ;;

  alien)
    message="Update code due to external API changes. $2"
    ;;

  truck)
    message="Move or rename resources (e.g.: files, paths, routes). $2"
    ;;

  page_facing_up)
    message="Add or update license. $2"
    ;;

  boom)
    message="Introduce breaking changes. $2"
    ;;

  bento)
    message="Add or update assets. $2"
    ;;

  wheelchair)
    message="Improve accessibility. $2"
    ;;

  bulb)
    message="Add or update comments in source code. $2"
    ;;

  beers)
    message="Write code drunkenly. $2"
    ;;

  speech_balloon)
    message="Add or update text and literals. $2"
    ;;

  card_file_box)
    message="Perform database related changes. $2"
    ;;

  loud_sound)
    message="Add or update logs. $2"
    ;;

  mute)
    message="Remove logs. $2"
    ;;

  busts_in_silhouette)
    message="Add or update contributor(s). $2"
    ;;

  children_crossing)
    message="Improve user experience / usability. $2"
    ;;

  building_construction)
    message="Make architectural changes. $2"
    ;;

  iphone)
    message="Work on responsive design. $2"
    ;;

  clown_face)
    message="Mock things. $2"
    ;;

  egg)
    message="Add or update an easter egg. $2"
    ;;

  see_no_evil)
    message="Add or update a .gitignore file. $2"
    ;;

  camera_flash)
    message="Add or update snapshots. $2"
    ;;

  alembic)
    message="Perform experiments. $2"
    ;;

  mag)
    message="Improve SEO. $2"
    ;;

  label)
    message="Add or update types. $2"
    ;;

  seedling)
    message="Add or update seed files. $2"
    ;;

  triangular_flag_on_post)
    message="Add, update, or remove feature flags. $2"
    ;;

  goal_net)
    message="Catch errors. $2"
    ;;

  dizzy)
    message="Add or update animations and transitions. $2"
    ;;

  wastebasket)
    message="Deprecate code that needs to be cleaned up. $2"
    ;;

  passport_control)
    message="Work on code related to authorization, roles and permissions. $2"
    ;;

  adhesive_bandage)
    message="Simple fix for a non-critical issue. $2"
    ;;

  monocle_face)
    message="Data exploration/inspection. $2"
    ;;

  coffin)
    message="Remove dead code. $2"
    ;;

  test_tube)
    message="Add a failing test. $2"
    ;;

  necktie)
    message="Add or update business logic $2"
    ;;

  stethoscope)
    message="Add or update healthcheck. $2"
    ;;

  bricks)
    message="Infrastructure related changes. $2"
    ;;

  technologist)
    message="Improve developer experience $2"
    ;;

  money_with_wings)
    message="Add sponsorships or money related infrastructure. $2"
    ;;

  thread)
    message="Add or update code related to multithreading or concurrency. $2"
    ;;

  safety_vest)
    message="Add or update code related to validation. $2"
    ;;


  *)
  message="updated. $2"
  ;;

esac

git add .; git commit -m ":$1: $message"; git push
  