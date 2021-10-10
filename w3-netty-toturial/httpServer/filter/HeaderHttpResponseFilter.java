package httpServer.filter;

import io.netty.handler.codec.http.FullHttpResponse;

public class HeaderHttpResponseFilter implements HttpResponseFilter {

    public void filter(FullHttpResponse response) {
        response.headers().set("resp", "hello,netty");
    }
}
