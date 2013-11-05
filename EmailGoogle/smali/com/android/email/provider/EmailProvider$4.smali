.class Lcom/android/email/provider/EmailProvider$4;
.super Landroid/os/AsyncTask;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/EmailProvider;->runSearchQuery(Landroid/content/Context;JJ)V
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
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;

.field final synthetic val$accountId:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$searchMailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5244
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$4;->this$0:Lcom/android/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$4;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/android/email/provider/EmailProvider$4;->val$accountId:J

    iput-wide p5, p0, Lcom/android/email/provider/EmailProvider$4;->val$searchMailboxId:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5244
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailProvider$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    #v11=(Null);
    const/4 v10, 0x0

    #v10=(Null);
    const/4 v9, 0x1

    .line 5247
    #v9=(One);
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$4;->val$context:Landroid/content/Context;

    #v1=(Reference);
    iget-wide v2, p0, Lcom/android/email/provider/EmailProvider$4;->val$accountId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v1, v2, v3}, Lcom/android/email/service/EmailServiceUtils;->getServiceForAccount(Landroid/content/Context;J)Lcom/android/emailcommon/service/EmailServiceProxy;

    move-result-object v0

    .line 5249
    .local v0, service:Lcom/android/emailcommon/service/EmailServiceProxy;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 5251
    :try_start_0
    iget-wide v1, p0, Lcom/android/email/provider/EmailProvider$4;->val$accountId:J

    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/android/email/provider/EmailProvider$4;->this$0:Lcom/android/email/provider/EmailProvider;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/email/provider/EmailProvider;->access$600(Lcom/android/email/provider/EmailProvider;)Lcom/android/emailcommon/service/SearchParams;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/provider/EmailProvider$4;->val$searchMailboxId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-virtual/range {v0 .. v5}, Lcom/android/emailcommon/service/EmailServiceProxy;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v8

    .line 5255
    .local v8, totalCount:I
    #v8=(Integer);
    new-instance v6, Landroid/content/ContentValues;

    #v6=(UninitRef);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {v6, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 5256
    .local v6, cv:Landroid/content/ContentValues;
    #v6=(Reference);
    const-string v1, "totalCount"

    #v1=(Reference);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5257
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$4;->this$0:Lcom/android/email/provider/EmailProvider;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/email/provider/EmailProvider$4;->val$searchMailboxId:J

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/android/email/provider/EmailProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5259
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmailProvider#runSearchQuery. TotalCount to UI: %d"

    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5265
    .end local v6           #cv:Landroid/content/ContentValues;
    .end local v8           #totalCount:I
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v10

    .line 5261
    :catch_0
    #v1=(Conflicted);v7=(Uninit);
    move-exception v7

    .line 5262
    .local v7, e:Landroid/os/RemoteException;
    #v7=(Reference);
    const-string v1, "searchMessages"

    #v1=(Reference);
    const-string v2, "RemoteException"

    #v2=(Reference);
    new-array v3, v9, [Ljava/lang/Object;

    #v3=(Reference);
    aput-object v7, v3, v11

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
