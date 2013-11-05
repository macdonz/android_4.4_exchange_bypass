.class Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupType;
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
.field private final mAddress:Ljava/lang/String;

.field private final mAuthority:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupType;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "address"
    .parameter "authority"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupType;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAddress:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAuthority:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupType;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAuthority:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->mAddress:Ljava/lang/String;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 187
    #v2=(Null);
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupType;

    #v0=(Reference);
    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSetupType;->access$002(Lcom/android/email/activity/setup/AccountSetupType;Z)Z

    .line 188
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "Duplicate account check cancelled (AccountSetupType)"

    #v1=(Reference);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "duplicateAccountName"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupType;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupType;->access$002(Lcom/android/email/activity/setup/AccountSetupType;Z)Z

    .line 173
    if-eqz p1, :cond_0

    .line 175
    invoke-static {p1}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v0

    .line 177
    .local v0, dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupType;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupType;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DuplicateAccountDialogFragment"

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 183
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 181
    :cond_0
    #v0=(Uninit);v2=(Null);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupType$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupType;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupType;->access$100(Lcom/android/email/activity/setup/AccountSetupType;)V

    goto :goto_0
.end method
