xquery version "3.0";

declare namespace json="http://www.json.org";
declare namespace control="http://exist-db.org/apps/dashboard/controller";
declare namespace output="http://exquery.org/ns/rest/annotation/output";
declare namespace rest="http://exquery.org/ns/restxq";

import module namespace restxq="http://exist-db.org/xquery/restxq" at "modules/restxq.xql";
import module namespace packages="http://exist-db.org/apps/dashboard/packages/rest" at "modules/packages.xql";

declare variable $exist:path external;
declare variable $exist:resource external;
declare variable $exist:controller external;
declare variable $exist:prefix external;
declare variable $exist:root external;

request:set-attribute("betterform.filter.ignoreResponseBody", "true"),
if ($exist:path eq '') then
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <redirect url="{request:get-uri()}/"/>
    </dispatch>
    
else if ($exist:path eq "/") then
    (: forward root path to index.xql :)
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <redirect url="index.html"/>
    </dispatch>
else if (starts-with($exist:path, "/packages/")) then
        let $funcs := util:list-functions("http://exist-db.org/apps/dashboard/packages/rest")
        (:    let $login := login:set-user("org.exist.login", (), true()):)
        return (
            response:set-header("Cache-Control", "no-cache"),
            restxq:process($exist:path, $funcs)
        )

else
    (: everything else is passed through :)
    <dispatch xmlns="http://exist.sourceforge.net/NS/exist">
        <cache-control cache="yes"/>
    </dispatch>
