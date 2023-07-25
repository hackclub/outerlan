import { ConnInfo, serve } from "https://deno.land/std@0.195.0/http/server.ts";

const handler = async (
  request: Request,
  connInfo: ConnInfo
): Promise<Response> => {
  const path = request.url.split("://")[1].split("/")[1];
  console.log(`New request: ${path}`);

  await Promise.resolve();

  switch (path) {
    case "signup": {
      if (connInfo.remoteAddr.transport === "tcp") {
        if (connInfo.remoteAddr.hostname !== Deno.env.get("AUTHENTIK_IP")) {
          console.log(
            `Request from ${connInfo.remoteAddr.hostname} (not Authentik)`
          );
          return new Response("not authentik");
        }
      } else {
        console.log("Request not TCP");
        return new Response("not tcp");
      }

      const {
        username,
        name,
        ssh,
      }: { username: string; name: string; ssh: string } = await request.json();

      console.log(`Creating user ${username}`);
      const createCommand = new Deno.Command("./create.sh", {
        args: [username, name, ssh],
      });

      const { code } = await createCommand.output();
      if (code !== 0) {
        console.log(
          `Failed to create user ${username}, script exited with code ${code}`
        );
        return new Response("failed");
      }

      console.log(`Created user ${username}`);
      return new Response("signup");
    }
    default:
      return new Response("default");
  }
};

console.log(
  `Starting server with AUTHENTIK_IP set to ${Deno.env.get("AUTHENTIK_IP")}`
);
serve(handler, { port: 3000 });
