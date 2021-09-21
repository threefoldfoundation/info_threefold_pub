# Deploy a Gitea instance

[Gitea](https://gitea.io/en-us/) is a painless, self-hosted Git service. It is similar to GitHub, Bitbucket, and GitLab, and represents a fork of Gogs.

## Get Started

When logged in to eVDC, find the `Gitea` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_marketplace_gitea_widget.png)

Create a name for your Gitea instance. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/evdc_gitea_01_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_gitea_02_domain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity. 

![](img/evdc_gitea_03_flavour.png ':size=600')

By now, all the information necessary to deploy your mattermost instance has been provided.  

![](img/evdc_gitea_04_success.png ':size=600')

The url that gives access to your Gitea instance can be found on the next screen, or in the deployed solutions overview. 

![](img/evdc_gitea_05_url.png)

## Log in using ThreeFold Connect App

You can login with your e-mail as well as with the ThreeFold Connect App that comes with a secure 2-Step authentication. 

![](img/evdc_tfc_login.png ':size=400')

Click on `Threefold Connect`, fill in your ThreeFold/3Bot ID, then switch to your mobile device and tap the corresponding emoji on the Threefold Connect App.

![](img/evdc_tfc_sso.png ':size=400')

You can start coding, sharing and using your Gitea instance in all its aspects.

![](img/evdc_gitea_06_loggedin.png)

The URL that provides access to it can be found on the next screen, or in the `deployed solutions` overview.
