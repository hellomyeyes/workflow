file(REMOVE_RECURSE
  "/home/runner/work/workflow/workflow/_lib/libworkflow.a"
  "/home/runner/work/workflow/workflow/_lib/libworkflow.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C CXX)
  include(CMakeFiles/workflow-static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
