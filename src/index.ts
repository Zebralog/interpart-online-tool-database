import fs from 'fs';
import {ApplicationConfig, InterpartBackendApplication} from './application';
import {local} from './env.local';

export * from './application';

export async function main(options: ApplicationConfig = {}) {
    const app = new InterpartBackendApplication(options);
    await app.boot();
    await app.start();

    const url = app.restServer.url;
    console.log(`Server is running at ${url}`);
    console.log(`Try ${url}/ping`);

    return app;
}

if (require.main === module) {
    let config = {};
    // Run the application
    if (local.https && local.sslCert && local.sslKey) {
        const key = fs.readFileSync(local.sslKey);
        const cert = fs.readFileSync(local.sslCert);
        config = {
            rest: {
                port: +(local.port ?? (process.env.PORT ?? 3000)),
                host: local.host ?? (process.env.HOST ?? 'localhost'),
                // The `gracePeriodForClose` provides a graceful close for http/https
                // servers with keep-alive clients. The default value is `Infinity`
                // (don't force-close). If you want to immediately destroy all sockets
                // upon stop, set its value to `0`.
                // See https://www.npmjs.com/package/stoppable
                gracePeriodForClose: 5000, // 5 seconds
                openApiSpec: {
                    // useful when used with OpenAPI-to-GraphQL to locate your application
                    setServersFromRequest: true,
                },
                // Enable HTTPS
                protocol: 'https',
                key: key,
                cert: cert
            },
        };
    } else {
        config = {
            rest: {
                port: +(local.port ?? (process.env.PORT ?? 3000)),
                host: local.host ?? (process.env.HOST ?? 'localhost'),
                // The `gracePeriodForClose` provides a graceful close for http/https
                // servers with keep-alive clients. The default value is `Infinity`
                // (don't force-close). If you want to immediately destroy all sockets
                // upon stop, set its value to `0`.
                // See https://www.npmjs.com/package/stoppable
                gracePeriodForClose: 5000, // 5 seconds
                openApiSpec: {
                    // useful when used with OpenAPI-to-GraphQL to locate your application
                    setServersFromRequest: true,
                },
            },
        };
    }
    main(config).catch(err => {
        console.error('Cannot start the application.', err);
        process.exit(1);
    });
}
