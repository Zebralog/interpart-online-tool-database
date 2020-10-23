import {ApplicationConfig, InterpartBackendApplication} from './application';
import fs from 'fs';
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
    // Run the application
    // if (local.https && local.ssl_cert && local.ssl_key) {
    //     const key = fs.readFileSync(local.ssl_key);
    //     const cert = fs.readFileSync(local.ssl_cert);
    //     const config = {
    //         rest: {
    //             port: +(local.port ?? (process.env.PORT ?? 3000)),
    //             host: local.host ?? (process.env.HOST ?? 'localhost'),
    //             // The `gracePeriodForClose` provides a graceful close for http/https
    //             // servers with keep-alive clients. The default value is `Infinity`
    //             // (don't force-close). If you want to immediately destroy all sockets
    //             // upon stop, set its value to `0`.
    //             // See https://www.npmjs.com/package/stoppable
    //             gracePeriodForClose: 5000, // 5 seconds
    //             openApiSpec: {
    //                 // useful when used with OpenAPI-to-GraphQL to locate your application
    //                 setServersFromRequest: true,
    //             },
    //             // Enable HTTPS
    //             protocol: 'https',
    //             key: key,
    //             cert: cert
    //         },
    //     };
    // } else {
        const config = {
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
    // }
    main(config).catch(err => {
        console.error('Cannot start the application.', err);
        process.exit(1);
    });
}
