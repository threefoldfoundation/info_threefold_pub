## client configurations

grid 3 client supports communication over RMB `MessageBusClient` or HTTP `HTTPMessageBusClient` using one of the deployed grid3 proxies.


```typescript
import fs from "fs";
import path from "path";
import { GridClient } from "../src/client";

import { MessageBusClientInterface } from "ts-rmb-client-base";
import { HTTPMessageBusClient } from "ts-rmb-http-client";
import { MessageBusClient } from "ts-rmb-redis-client";

```

So according to your scenario you choose the communication method

## example configuration object

```json
{
    "twin_id": 51,
    "mnemonic": "muffin reward plug grant able market nerve orphan token foster major relax",
    "url": "wss://tfchain.dev.threefold.io/ws",
    "proxy": "https://rmbproxy1.devnet.grid.tf"
}`
```

So all configurations that is needed are
- twin_id
- tfchanin or proxy url (based on the communication method)
- mnemonics
- rmb

## creating a client

```typescript
function getClient(): GridClient {
    let rmb: MessageBusClientInterface;
    if (config.proxy) {
        rmb = new HTTPMessageBusClient(config.twin_id, config.proxy);
    } else {
        rmb = new MessageBusClient();
    }
    return new GridClient(config.twin_id, config.url, config.mnemonic, rmb);
}
```

> Note: The choice of the node is completely up to the user at this point. They need to do the capacity planning. Check [Exploring Capacity](grid3_explorer) to know which nodes fits your deployment criteria.