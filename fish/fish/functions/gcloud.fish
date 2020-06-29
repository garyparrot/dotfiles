# Defined in - @ line 1
function gcloud --wraps='docker run --rm --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gcloud' --description 'alias gcloud docker run --rm --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gcloud'
  docker run --rm -it --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gcloud $argv;
end
