package nio01.client;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ProxySelector;


public class MyClient {

    public static void main(String[] args) {
        doGetRequest();
    }

    private static void doGetRequest() {
        CloseableHttpClient httpClient = HttpClientBuilder.create().build();

        //创建Get请求
        HttpGet httpGet = new HttpGet("http://localhost:8801");
        //响应模型
        CloseableHttpResponse response = null;

        try {
            RequestConfig requestConfig = RequestConfig.custom()
                    .setConnectTimeout(6000)
                    .setConnectionRequestTimeout(6000)
                    .setSocketTimeout(6000)
                    .setRedirectsEnabled(true).build();
            httpGet.setConfig(requestConfig);

            response = httpClient.execute(httpGet);

            //从响应模型中获取响应实体
            HttpEntity responseEntity = response.getEntity();
            System.out.println("响应状态：" + response.getStatusLine());
            if (responseEntity != null) {
                System.out.println("响应内容长度为:" + responseEntity.getContentLength());
                System.out.println("响应内容为:" + EntityUtils.toString(responseEntity));
            }

        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                // 释放资源
                if (httpClient != null) {
                    httpClient.close();
                }
                if (response != null) {
                    response.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
