.class Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;
.super Ljava/lang/Object;
.source "MailAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/MailAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountCacheEntry"
.end annotation


# instance fields
.field final mAccount:Lcom/android/mail/providers/Account;

.field final mAccountsQueryUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/mail/providers/Account;Landroid/net/Uri;)V
    .locals 0
    .parameter "account"
    .parameter "accountQueryUri"

    .prologue
    .line 497
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 498
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/android/mail/providers/Account;

    .line 499
    iput-object p2, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    .line 500
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 502
    #v3=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 503
    #p0=(Reference);
    const-string v1, "acct"

    #v1=(Reference);
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/providers/Account;->newinstance(Ljava/lang/String;)Lcom/android/mail/providers/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/android/mail/providers/Account;

    .line 504
    iget-object v1, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/android/mail/providers/Account;

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "AccountCacheEntry de-serializing failed. Account object could not be created from the JSONObject: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 509
    :cond_0
    #v2=(Uninit);v3=(Null);
    iget-object v1, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v1, v1, Lcom/android/mail/providers/Account;->settings:Lcom/android/mail/providers/Settings;

    sget-object v2, Lcom/android/mail/providers/Settings;->EMPTY_SETTINGS:Lcom/android/mail/providers/Settings;

    #v2=(Reference);
    if-ne v1, v2, :cond_1

    .line 510
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "AccountCacheEntry de-serializing failed. Settings could not be created from the JSONObject: "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 513
    :cond_1
    #v3=(Null);
    const-string v1, "queryUri"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, uriStr:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 515
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_2
    iput-object v3, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 523
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    #v1=(UninitRef);
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #v1=(Reference);
    const-string v2, "acct"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccount:Lcom/android/mail/providers/Account;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->serialize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "queryUri"

    iget-object v3, p0, Lcom/android/mail/providers/MailAppProvider$AccountCacheEntry;->mAccountsQueryUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 526
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Lorg/json/JSONException;
    #v0=(Reference);
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1
.end method
