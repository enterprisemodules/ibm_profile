bundle exec rake litmus
export TARGET_HOST=$(grep container_id spec/fixtures/litmus_inventory.yaml | awk '{ print $2}')
