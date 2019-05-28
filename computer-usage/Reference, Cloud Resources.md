Given that many people might need access to GPUs, here I will highlight some of free and cheap ways of getting GPU cloud access.

Always-free GPU access:

1.  Kaggle Kernels – this is part of the Kaggle platform. This provides 9 hours of execution time on a NVIDIA P100 GPU, with 2 CPU cores and 14 GB of RAM. You can write a script or notebook, and the kernel is committed for it to be run. It currently supports R and Python. It has 5 GB of auto-saved disk space (amount of data you can write out). It also has 16 GB temporary space. A total of 100 GB of datasets (part of Kaggle) can be added to a kernel. So if you have a large dataset, it would probably be better to create a Kaggle dataset and add it to a kernel rather than downloading it from the internet. Note that each Kaggle Dataset has a size limit of 10 GB. Be sure to enable GPU (and internet connection if you are using it).
2.  Google Colaboratory – This provides 12 hours of execution time on a Tesla T4 GPU with 16 GB of RAM and also 2 CPU cores. It provides 358 GB of storage. Colaboratory only supports notebooks and currently supports Python, R, and Swift.

Google Colaboratory also provides free Tensor Processing Units (TPUs), which are Google’s new processing units developed by Google specifically for deep learning. Therefore, if you are using TensorFlow (or libraries built on top of TensorFlow, like Keras), you could try the TPUs if you are working with large datasets. They provide 64 GB RAM, with 49 GB of storage.

Free credits for paid services (requires credit card for sign up):

1.  Amazon Web Services – this is one of the most widely used cloud computing platforms. They provide free credits for students and educators over here:  [https://aws.amazon.com/education/awseducate/ (Links to an external site.)Links to an external site.](https://aws.amazon.com/education/awseducate/)

Additionally, you can get even more credits through the GitHub Student Developer Pack (which has many other amazing offers for students!)  [https://education.github.com/pack/ (Links to an external site.)Links to an external site.](https://education.github.com/pack/)

For future reference, there may be also opportunities to get AWS credits for research (ex:  [https://aws.amazon.com/research-credits/ (Links to an external site.)Links to an external site.](https://aws.amazon.com/research-credits/))

2.  Google Cloud Platform – This platform is also one of the most widely used cloud computing platforms. There are many different products, but for training models, you would use Google Cloud Compute. Google provides a free trial with $300 credits that can used for any of the Cloud Platform products in 12 months.

Again, researchers can apply for free GCP credits (up to $5000)  [https://edu.google.com/programs/credits/research/?modal_active=none (Links to an external site.)Links to an external site.](https://edu.google.com/programs/credits/research/?modal_active=none)

3.  Microsoft Azure – Microsoft also offers cloud computing, and a free trial. Again there are many products and the provided $200 credit works for all of them but the GPU-enabled virtual machines would be what to use to train deep learning models. The credit is only available for 30 days.  [https://azure.microsoft.com/en-us/free/ (Links to an external site.)Links to an external site.](https://azure.microsoft.com/en-us/free/)

They also provide $100 credit for students ([https://azure.microsoft.com/en-us/free/students/ (Links to an external site.)Links to an external site.](https://azure.microsoft.com/en-us/free/students/))

4.  Paperspace Gradient – This is another cloud computing platform. However, due to their referral program, it seems there are many promo codes for free credits.  [https://gradient.paperspace.com/ (Links to an external site.)Links to an external site.](https://gradient.paperspace.com/)

I have only used Kaggle Kernels and Google Colaboratory. Here I will describe some of the pros and cons of those two platforms:

Google Colaboratory:

Pros:

1.  Tesla T4 GPU is one of the more powerful GPUs available (allows half precision training)
2.  Plenty of storage
3.  Integration with Google Drive
4.  12-hour runtime
5.  Plenty of storage
6.  Results can easily be shared with others

Cons:

1.  Frequently times out à must visit the notebook around every hour, or must be open on your device.

Kaggle Kernels:

Pros:

1.  Commit allows for kernel to be run without it open on a device or it timing out. Also allows version control (code and results of every version saved).
2.  Integrated with the Kaggle system (though not so applicable for this course).
3.  Results can easily be shared with others

Cons:

1.  Cannot view output of the notebook while it is committed.
2.  If you don’t commit, and run in the editor, frequently times out and hard to save output.
3.  9-hour runtime (as opposed to 12 hour runtime of Google Colaboratory). If you go over the limit, the kernel is shut down and the output of the notebook till that point is lost (though any output files will still be available)
4.  Less storage than Google Colaboratory.

The Google Colab’s timeout problem can be very annoying and you have to make sure you are always connected. However, I find it easier to use in many cases especially since it will have faster training time due to the more powerful GPU and half-precision training.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTg4ODkxNTk5MF19
-->