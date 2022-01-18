json2yaml() {
  python3 -c 'import sys, yaml, json; print(yaml.dump(json.loads(sys.stdin.read())))'
}

goal_generate_pipeline() {
    json2yaml < "output.json" > "output_yaml.yml"
}

goal_generate_pipeline