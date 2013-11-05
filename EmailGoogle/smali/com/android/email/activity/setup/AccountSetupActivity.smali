.class public Lcom/android/email/activity/setup/AccountSetupActivity;
.super Landroid/app/Activity;
.source "AccountSetupActivity.java"

# interfaces
.implements Lcom/android/email/activity/setup/SetupData$SetupDataContainer;


# instance fields
.field protected mSetupData:Lcom/android/email/activity/setup/SetupData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getSetupData()Lcom/android/email/activity/setup/SetupData;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v0=(Reference);
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    if-eqz p1, :cond_2

    .line 36
    const-string v1, "com.android.email.setupdata"

    #v1=(Reference);
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SetupData;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    .line 43
    :cond_0
    :goto_0
    #v0=(Conflicted);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    if-nez v1, :cond_1

    .line 44
    new-instance v1, Lcom/android/email/activity/setup/SetupData;

    #v1=(UninitRef);
    invoke-direct {v1}, Lcom/android/email/activity/setup/SetupData;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    .line 47
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 38
    :cond_2
    #v0=(Uninit);v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, b:Landroid/os/Bundle;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SetupData;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "com.android.email.setupdata"

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupActivity;->mSetupData:Lcom/android/email/activity/setup/SetupData;

    #v1=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 57
    return-void
.end method
