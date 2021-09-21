# Deploy a Peertube instance

[PeerTube](https://joinpeertube.org/) is a free and open-source video platform. It represents an alternative to platforms such as YouTube, Vimeo, and Dailymotion.

PeerTube is decentralized, meaning that it is not hosted by a single person, company, or server.

## Get Started

When logged in to eVDC, find the `PeerTube` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_marketplace_peertube_widget.png)

Create a name for your PeerTube instance. This name will be used to identify your deployment on your 'Deployed Solutions' list.

![](img/evdc_peertube_01_name.png ':size=600')

You can choose to create a url which is part of your domain, or have one auto-generated. 

Select the domain type for your PeerTube:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_peertube_02_domain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity for your PeerTube instance.

![](img/evdc_peertube_03_flavour.png ':size=600')

The url that gives you access to your PeerTube instance can be found on the next screen, or in the `deployed solutions` overview.

![](img/evdc_peertube_04_success.png ':size=600')


### Login using ThreeFold Connect App

You can login with your e-mail as well as with the ThreeFold Connect App that comes with a secure 2-Step authentication. 

![](img/evdc_peertube_05_login.png ':size=200')

Click on `Threefold Connect`, fill in your ThreeFold/3Bot ID, then switch to your mobile device and tap the corresponding emoji on the Threefold Connect App.

![](img/evdc_tfc_login.png ':size=400')
![](img/evdc_tfc_sso.png ':size=400')

The URL that provides access to it can be found on the next screen, or in the deployed solutions overview. 

Now all you have PeerTube instance running. You can upload your videos and invite other to joins your instance. 

![](img/evdc_peertube_07_runs.png)