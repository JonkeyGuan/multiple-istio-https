# istio-https


https://istio.io/latest/zh/docs/ops/common-problems/network-issues/#not-found-errors-occur-when-multiple-gateways-configured-with-same-TLS-certificate

当为多个 Gateway 配置了相同的 TLS 证书导致 404 异常
多个网关配置同一 TLS 证书会导致浏览器在与第一台主机建立连接之后访问第二台主机时利用 HTTP/2 连接复用（例如，大部分浏览器）从而导致 404 异常产生。

举个例子，假如您有 2 个主机共用相同的 TLS 证书，如下所示：

通配证书 *.test.com 被安装到 istio-ingressgateway
Gateway 将 gw1 配置为主机 service1.test.com，选择器 istio: ingressgateway，并且 TLS 使用 gateway 安装的（通配）证书
Gateway 将 gw2 配置为主机 service2.test.com，选择器 istio: ingressgateway，并且 TLS 使用 gateway 安装的（通配）证书
VirtualService 将 vs1 配置为主机 service1.test.com 并且 gateway 配置为 gw1
VirtualService 将 vs2 配置为主机 service2.test.com 并且 gateway 配置为 gw2
因为两个网关都由相同的工作负载提供服务（例如，选择器 istio: ingressgateway），到两个服务的请求（service1.test.com 和 service2.test.com）将会解析为同一 IP。 如果 service1.test.com 首先被接受了，它将会返回一个通配证书（*.test.com）使得到 service2.test.com 的连接也能够使用相同的证书。 因此，Chrome 和 Firefox 等浏览器会自动使用已建立的连接来发送到 service2.test.com 的请求。 因为 gateway（gw1）没有到 service2.test.com 的路由信息，它会返回一个 404 (Not Found) 响应。

您可以通过配置一个单独的通用 Gateway 来避免这个问题，而不是两个（gw1 和 gw2）。 然后，简单地绑定两个 VirtualService 到这个单独的网关，比如这样：

Gateway 将 gw 配置为主机 *.test.com，选择器 istio: ingressgateway，并且 TLS 使用网关挂载的（通配）证书
VirtualService 将 vs1 配置为主机 service1.test.com 并且 gateway 配置为 gw
VirtualService 将 vs2 配置为主机 service2.test.com 并且 gateway 配置为 gw
