.class Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalSetupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/android/emailcommon/provider/Account;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 249
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    .line 250
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "params"

    .prologue
    .line 255
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "displayName"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "senderName"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 261
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {v1}, Lcom/android/email/provider/AccountBackupRestore;->backup(Landroid/content/Context;)V

    .line 263
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v1

    #v1=(Boolean);
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .parameter "isSecurityHold"

    .prologue
    const/4 v4, 0x0

    .line 268
    #v4=(Null);
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->isCancelled()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->mAccount:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, i:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-virtual {v1, v0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 274
    :cond_1
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);v3=(Uninit);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->access$400(Lcom/android/email/activity/setup/AccountSetupNames;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$FinalSetupTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
