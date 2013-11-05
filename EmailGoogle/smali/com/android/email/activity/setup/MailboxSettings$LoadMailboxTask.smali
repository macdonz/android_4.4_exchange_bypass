.class Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;J)V
    .locals 1
    .parameter
    .parameter "mailboxId"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    .line 163
    invoke-static {p1}, Lcom/android/email/activity/setup/MailboxSettings;->access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 164
    #p0=(Reference);
    iput-wide p2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    .line 165
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v3, 0x0

    .line 169
    #v3=(Null);
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    .line 170
    .local v0, c:Landroid/content/Context;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v1=(Reference);
    iget-wide v4, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    #v2=(Reference);
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v1, v6}, Lcom/android/email/activity/setup/MailboxSettings;->access$202(Lcom/android/email/activity/setup/MailboxSettings;I)I

    .line 172
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iget-wide v4, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/MailboxSettings;->access$300()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v8

    .line 177
    .local v8, policyKey:Ljava/lang/Long;
    #v8=(Reference);
    if-eqz v8, :cond_0

    .line 178
    iget-object v9, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v9=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/MailboxSettings;->access$400()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #v1=(Integer);
    invoke-static {v9, v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$202(Lcom/android/email/activity/setup/MailboxSettings;I)I

    .line 183
    .end local v8           #policyKey:Ljava/lang/Long;
    :cond_0
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-object v3
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 188
    #v1=(One);
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    .line 198
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 192
    :cond_1
    #v0=(Reference);v2=(Uninit);
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$500(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    #v2=(Reference);
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    #v0=(Integer);
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    #v0=(Boolean);
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$600(Lcom/android/email/activity/setup/MailboxSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$700(Lcom/android/email/activity/setup/MailboxSettings;)V

    .line 195
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    #v0=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    if-eq v0, v2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #v0=(Reference);
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$800(Lcom/android/email/activity/setup/MailboxSettings;Z)V

    goto :goto_0

    .line 192
    :cond_2
    #v0=(Integer);v2=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method
