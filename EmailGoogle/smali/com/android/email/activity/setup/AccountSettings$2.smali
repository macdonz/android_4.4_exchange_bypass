.class Lcom/android/email/activity/setup/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 746
    #v4=(Null);
    const-string v1, "uiaccount"

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettings$2;->val$account:Lcom/android/emailcommon/provider/Account;

    #v2=(Reference);
    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailProvider;->uiUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 747
    .local v0, uri:Landroid/net/Uri;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$2;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    return-void
.end method
