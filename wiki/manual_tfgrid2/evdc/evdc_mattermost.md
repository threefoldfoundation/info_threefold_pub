# Deploy a Mattermost instance

[Mattermost](https://mattermost.com/) is a widely-trusted open-source and self-hosted collaboration tool and messaging platform that enables secure team collaboration. 

## Get Started

When logged in to eVDC, find the `Mattermost` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_mattermost_01_widget.png ':size=200')

Create a name for your Mattermost instance. This name will be used to identify your deployment on your 'Deployed Solutions' list.

![](img/evdc_mattermost_02_chatflow_name1.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_mattermost_03_chatflow_subdomain.png ':size=600')

Once this info is entered, wait for the solution to be deployed. 

![](img/evdc_mattermost_04_chatflow_deploy.png ':size=600')

Fill in the SQL database information and protect it with a password. 

![](img/evdc_mattermost_05_chatflow_mysql.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity for your PeerTube instance.

![](img/evdc_mattermost_06_chatflow_flavour.png ':size=600')

By now, all the information necessary to deploy your mattermost instance has been provided.  

![](img/evdc_mattermost_07_chatflow_init.png ':size=600')

![](img/evdc_mattermost_08_chatflow_success.png ':size=600')

Now all what remains to be done, is the configuration of your Mattermost instance. The url that gives access to it can be found on the next screen, or in the deployed solutions overview. 

![](img/evdc_mattermost_14_mmdashboard.png)

