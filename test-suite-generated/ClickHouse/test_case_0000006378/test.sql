SELECT decodeURLComponent(materialize(pathFull('www.example.com/?query=hello%20world+foo%2Bbar'))) AS Path;
