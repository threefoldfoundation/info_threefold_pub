# Deploy a ZeroCI instance

[ZeroCI](https://github.com/threefoldtech/zeroCI) is ThreeFold's continuous integration tool for developers looking to build on top of the peer-to-peer ThreeFold Grid.

It is useful for all coding languages, though it has specific features for Python projects that generate test summaries into xml file. It is integrated with version control systems and Telegram.

## Get Started

When logged in to eVDC, find the `ZeroCI` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_marketplace_zeroci_widget.png)

Create a name for your solution. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/evdc_zeroci_01_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your Cryptpad:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_zeroci_02_domain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity. 

![](img/evdc_zeroci_03_flavour.png ':size=600')

Congratulations! you just successfully deployed a ZeroCI server on the ThreeFold_Grid! You can now click on the given link to access it.

![](img/evdc_zeroci_04_success.png ':size=600')

The url that gives access to your ZeroCI instance can be found on the next screen, or in the deployed solutions overview.

## Log in using ThreeFold Connect App

You can login with your e-mail as well as with the ThreeFold Connect App that comes with a secure 2-Step authentication. 

Fill in the ThreeFold / 3Bot ID that you created. 

![](img/evdc_tfc_login.png ':size=400')

Click on `Threefold Connect`, fill in your ThreeFold/3Bot ID, then switch to your mobile device and tap the corresponding emoji on the Threefold Connect App.

![](img/evdc_tfc_sso.png ':size=400')

You're ready to build and configure your Continuous Integration scenarios into ZeroCI!

![](img/evdc_zeroci_05_loggedin.png)