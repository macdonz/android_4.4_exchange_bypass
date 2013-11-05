.class Lcom/android/email/activity/setup/MailboxSettings$2;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$syncInterval:I

.field final synthetic val$syncIntervalChanged:Z

.field final synthetic val$syncLookback:I

.field final synthetic val$syncLookbackChanged:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;ZIZIJLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncIntervalChanged:Z

    iput p4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncInterval:I

    iput-boolean p5, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncLookbackChanged:Z

    iput p6, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncLookback:I

    iput-wide p7, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$id:J

    iput-object p9, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 293
    #v5=(Null);
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    const/4 v2, 0x2

    #v2=(PosByte);
    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 295
    .local v0, cv:Landroid/content/ContentValues;
    #v0=(Reference);
    iget-boolean v2, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncIntervalChanged:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 296
    const-string v2, "syncInterval"

    #v2=(Reference);
    iget v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncInterval:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    iget-boolean v2, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncLookbackChanged:Z

    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 299
    const-string v2, "syncLookback"

    #v2=(Reference);
    iget v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$syncLookback:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    #v2=(Reference);
    iget-wide v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$id:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 302
    .local v1, uri:Landroid/net/Uri;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    sget-object v2, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Saved: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 305
    return-object v5
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 290
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 314
    return-void
.end method
