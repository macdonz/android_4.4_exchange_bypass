.class Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAutoSetup:Z

.field private final mCheckAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "checkAddress"
    .parameter "autoSetup"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 486
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    .line 487
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckAddress:Ljava/lang/String;

    .line 489
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {p1, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$002(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z

    .line 490
    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mAutoSetup:Z

    .line 491
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 479
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckAddress:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 479
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 525
    #v2=(Null);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #v0=(Reference);
    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$002(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z

    .line 526
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "DuplicateCheckTask cancelled (AccountSetupBasics)"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 479
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "duplicateAccountName"

    .prologue
    .line 500
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$002(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z

    .line 502
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$100(Lcom/android/email/activity/setup/AccountSetupBasics;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 521
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 504
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Boolean);v4=(Null);
    if-eqz p1, :cond_1

    .line 505
    invoke-static {p1}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v1

    .line 507
    .local v1, dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DuplicateAccountDialogFragment"

    #v4=(Reference);
    invoke-virtual {v1, v3, v4}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v1           #dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    :cond_1
    #v1=(Uninit);v3=(Boolean);v4=(Null);
    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mAutoSetup:Z

    if-eqz v3, :cond_2

    .line 510
    const/4 v3, 0x3

    #v3=(PosByte);
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 513
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 514
    .local v2, transaction:Landroid/app/FragmentTransaction;
    #v2=(Reference);
    const-string v3, "AccountCheckStgFrag"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 515
    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 516
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 518
    .end local v0           #checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_2
    #v0=(Uninit);v2=(Uninit);v3=(Boolean);
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #v3=(Reference);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$200(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V

    goto :goto_0
.end method
