# Tilde API

HTTP server that creates users on the tilde server

## Set up Authentik to notify via webhook when a user is created

Webhook Mapping:

```python
new_user = ak_user_by(username=notification.event.user.get("username"))
return {
  "username": notification.event.user.get("username"),
  "name": notification.event.user.get("name"),
  "ssh": new_user.attributes['ssh']
}
```

Notification Transport:

- Mode: Webhook (generic)
- URL: http://\<tilde IP>:3000/signup

Notification Rule:

- Group with 1 member

Notification Rule policy: Event matcher policy

- Action: User Write
- Client IP: .\*
- App: authentik Stages.User Write
- Model: User (authentik_core)

## Running

- Install Deno in root
- Run main.ts

```shell
sudo env AUTHENTIK_IP="<IP addr of the docker>" /root/.deno/bin/deno run --allow-net --allow-env=AUTHENTIK_IP --allow-run=./create.sh main.ts
```
