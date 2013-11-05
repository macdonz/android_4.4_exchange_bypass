.class Lcom/android/email/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$1;->call()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 8

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    .line 418
    .local v1, context:Landroid/content/Context;
    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v6}, Lcom/android/email/Preferences;->getLastUsedAccountId()J

    move-result-wide v4

    .line 420
    .local v4, lastUsedAccountId:J
    #v4=(LongLo);v5=(LongHi);
    invoke-static {v1, v4, v5}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 422
    .local v2, defaultId:J
    #v2=(LongLo);v3=(LongHi);
    const-wide/16 v6, -0x1

    #v6=(LongLo);v7=(LongHi);
    cmp-long v6, v2, v6

    #v6=(Byte);
    if-eqz v6, :cond_0

    .line 423
    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 424
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    .line 429
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :goto_0
    #v0=(Conflicted);v6=(Reference);
    return-object v6

    :cond_0
    #v6=(Byte);
    const/4 v6, 0x0

    #v6=(Null);
    goto :goto_0
.end method
