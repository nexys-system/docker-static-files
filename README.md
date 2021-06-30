# Docker container for static files

## Deploy to Northflank

to add at end of CI

```
- name: Northflank
        run: |
          curl --header "Content-Type: application/json"  --header "Authorization: Bearer ${{ secrets.NORTHFLANK_TOKEN }}" --request POST --data '{"external":{"imagePath":"'$DOCKERHUB_URL':latest","credentials":"gitlab"}}' https://api.northflank.com/v1/projects/{project}/services/{service}/deployment
```
