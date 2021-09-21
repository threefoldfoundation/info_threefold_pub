# Host a Website

![](img/website_preview.png)

## Pre-requisites 

- A **github account**.
- A **public github repository** complete with folders containing your website codes and files. [Click here](https://github.com/threefoldfoundation/website_example) to see an example of a website repo that you can fork (copy to your own github).
- **Optional for custom domain**: an active domain can be  assigned to a particular IP, that option will be given to you during deployment. Depending on where you purchased your domain, the registry has its own procedure on how to assign an IP to a domain. Click [here](https://www.hostmysite.com/support/cpanel/dns/domain_point/) to read a general tutorial on how to assign an IP to your domain.
- An **active eVDC** with sufficient capacity.

## Get Started

Once you're logged in to eVDC, find the `Website` widget in Marketplace, on your admin panel and click on `Deploy` button.

![](img/website_startnew.png ':size=600')

Create a name for your new website. This name will be used to identify your deployment on your 'Deployed Solutions' list.

![](img/website_name.png ':size=600')

You can choose to create a URL which is part of your domain, or have one auto-generated.

Select the domain type for your website:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/website_domain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity for your website.

![](img/website_capacity.png ':size=600')

Add your website repository files to the deployment:
- Repository URL: the URL address of your blog's source codes on github.
- Branch: the main official working version of your project. Read more about github branch [here](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-branches).
- Source directory: the name of the main folder in your github repository where all your html codes, css, index.html page, and other codes that make up your blog pages live.

![](img/website_identify.png ':size=600')

To create a website from a template website from ThreeFold, go to [Template Website](https://github.com/threefoldfoundation/website_example) on github and click on fork.

![](img/website_fork.png ':size=600')

Go to your newly forked github repository and copy the Repository URL on your forked repository

![](img/website_copy.png ':size=600')

Paste the URL to the chat flow `Repository url` form.

![](img/website_paste.png ':size=600')

Identify the `Branch` of your website (ex. main) - the main source folder of your website and click `Next`.

![](img/website_identify.png ':size=600')

By now, all the information necessary to deploy the blog has been provided.

![](img/website_deploy.png ':size=600')

Congratulations, you just successfully hosted a website on the ThreeFold Grid!

![](img/website_success.png ':size=600')

Click on the website domain to open and preview your newly hosted website.

![](img/website_preview.png)

Update and complete your website in the forked template on Github. You can customize your website after deployment. Always remember which Github repo you are using.