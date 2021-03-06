.class Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;
.super Landroid/os/AsyncTask;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetCookieTask"
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
.field final mAccountCookieQueryUri:Landroid/net/Uri;

.field final mResolver:Landroid/content/ContentResolver;

.field final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "baseUri"
    .parameter "accountCookieQueryUri"

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1476
    #p0=(Reference);
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->mUri:Ljava/lang/String;

    .line 1477
    iput-object p4, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->mAccountCookieQueryUri:Landroid/net/Uri;

    .line 1478
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->mResolver:Landroid/content/ContentResolver;

    .line 1479
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1470
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 1484
    #v3=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->mResolver:Landroid/content/ContentResolver;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->mAccountCookieQueryUri:Landroid/net/Uri;

    #v1=(Reference);
    sget-object v2, Lcom/android/mail/providers/UIProvider;->ACCOUNT_COOKIE_PROJECTION:[Ljava/lang/String;

    #v2=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1486
    .local v7, cookieCursor:Landroid/database/Cursor;
    #v7=(Reference);
    if-nez v7, :cond_0

    .line 1508
    :goto_0
    #v0=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    return-object v3

    .line 1491
    :cond_0
    :try_start_0
    #v0=(Reference);v6=(Uninit);v8=(Uninit);
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 1492
    const-string v0, "cookie"

    #v0=(Reference);
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1495
    .local v6, cookie:Ljava/lang/String;
    #v6=(Reference);
    if-eqz v6, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v8

    .line 1498
    .local v8, csm:Landroid/webkit/CookieSyncManager;
    #v8=(Reference);
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$SetCookieTask;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    .end local v6           #cookie:Ljava/lang/String;
    .end local v8           #csm:Landroid/webkit/CookieSyncManager;
    :cond_1
    #v0=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    #v0=(Reference);
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
