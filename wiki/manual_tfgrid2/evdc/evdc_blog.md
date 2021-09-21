# Host a Blog 

![](img/evdc_blog_06_url.png)

## Pre-requisites 

- A **github account**.
- A **public github repository** complete with folders containing your blog codes and files. [Click here](https://github.com/threefoldtech/blog_example) to see an example of a blog repo that you can fork (copy to your own github).
- **Optional for custom domain**: an active domain can be  assigned to a particular IP, that option will be given to you during deployment. Depending on where you purchased your domain, the registry has its own procedure on how to assign an IP to a domain. Click [here](https://www.hostmysite.com/support/cpanel/dns/domain_point/) to read a general tutorial on how to assign an IP to your domain.
- An **active eVDC** with sufficient capacity.

## Get Started

When logged in to eVDC, find the `Blog` widget in Marketplace, on your admin panel and click on the `Deploy` button.

![](img/evdc_marketplace_blog_widget.png)

Create a name for your blog. This name will be used to identify your deployment on your `Deployed Solutions` list.

![](img/evdc_blog_01_name.png ':size=600')

You can choose to create a url which is part of your domain, or have one auto-generated.

Select the domain type for your blog:
- For deployment with **random subdomain**, select `Choose subdomain for me on a gateway`. 
- For deployment with a particular **available subdomain**, select `Choose a custom subdomain on a gateway`. 
- To host a blog using **your own domain**, select `choose a custom domain`.

![](img/evdc_blog_02_domain.png ':size=600')

Choose the size of the capacity that you want to reserve for this solution, both in terms of compute power and memory capacity for your blog.

![](img/evdc_blog_03_config.png ':size=600')

Add your blog repository information to the deployment:
- Repository URL: the URL address of your blog's source codes on github.
- Branch: the main official working version of your project. Read more about github branch [here](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-branches).
- Source directory: the name of the main folder in your github repository where all your html codes, css, index.html page, and other codes that make up your blog pages live.

![](img/evdc_blog_04_configuration.png ':size=600')

To create a blog from a template website of ThreeFold, go to [Template Website](https://github.com/threefoldtech/blog_example) on github and click on fork.

![](img/evdc_blog_07_fork.png ':size=600')

Go to your newly forked github repository and copy the Repository's URL on your forked repository.

![](img/evdc_blog_08_repo_copy.png ':size=600')

Paste the URL to the chat flow `Repository URL` form.

Identify the `Branch` of your website (ex: main),  the main source folder of your website and click `Next`.

![](img/evdc_blog_04_configuration.png ':size=600')

By now, all the information necessary to deploy the blog has been provided.

Congratulations, you just successfully hosted a website on the ThreeFold Grid!

![](img/evdc_blog_05_success.png ':size=600')

Click on the domain to open and preview your newly hosted blog.

![](img/evdc_blog_06_url.png)

Update and complete your blog in the forked template on Github. You can customize your blog after deployment. Always remember which Github repo you are using.