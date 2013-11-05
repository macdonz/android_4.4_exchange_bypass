.class Lcom/android/email/activity/setup/AccountSetupOptions$4;
.super Landroid/os/AsyncTask;
.source "AccountSetupOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 376
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupOptions$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 381
    .local v1, context:Lcom/android/email/activity/setup/AccountSetupOptions;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 382
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    iget v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    #v2=(Integer);
    and-int/lit8 v2, v2, -0x21

    iput v2, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 383
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 385
    invoke-static {v1}, Lcom/android/email2/ui/MailActivityEmail;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 386
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/HostAuth;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/email/service/EmailServiceUtils;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;Lcom/android/email/activity/setup/SetupData;)V

    .line 389
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 390
    const/4 v2, 0x0

    #v2=(Null);
    return-object v2
.end method
