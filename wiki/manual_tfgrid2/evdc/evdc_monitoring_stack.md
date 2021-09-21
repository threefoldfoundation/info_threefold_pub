# Monitor Kubernetes Clusters using Monitoring Stack

## What is Prometheus

[Prometheus](https://prometheus.io/) is a free software application used for event monitoring and alerting. It records real-time metrics in a time series database, allowing for high dimensionality.

## What is Grafana

[Grafana](https://grafana.com) has become the world’s most popular technology used to compose observability dashboards with everything from Prometheus & Graphite metrics to logs and application to data power plants and beehives.

## Getting Started

When logged in to eVDC, find the `Monitoring Stack` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_k8s_monitoring_02_mktpl2.png ':size=200')

Create a name for your Monitoring Stack instance. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/evdc_k8s_monitoring_03_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_k8s_monitoring_04_subdomain.png ':size=600')

After setting up the name of your monitoring stack and configuring the URL, the Monitoring Stack will be deployed. 

The URL that gives access to your Monitoring Stack instance can be found on the next screen, or in the deployed solutions overview.

![](img/evdc_k8s_monitoring_05_deploying.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity. 

![](img/evdc_k8s_monitoring_06_flavour.png ':size=600')

Once the package is selected, the monitoring stack will be initialized on your Kubernetes cluster. 

![](img/evdc_k8s_monitoring_07_init.png ':size=600')

You will be provided with URLs to access your monitoring solution, with both UIs on Prometheus and Grafana. 

![](img/evdc_k8s_monitoring_08_success.png ':size=600')

![](img/evdc_k8s_monitoring_09_prometheus.png)

![](img/evdc_k8s_monitoring_09_grafana1.png)

![](img/evdc_k8s_monitoring_11_grafana3.png)

More Info:

- For the installation of Kubernetes monitoring on your local machine, see [Local Monitoring](evdc_monitoring_local).
- Go back to [Kubernetes Actions](kubernetes_deploy).


