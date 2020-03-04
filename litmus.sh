bundle exec rake litmus
export TARGET_HOST=$(grep container_id inventory.yaml | awk '{ print $2}')
