.class public final Lcom/android/emailcommon/utility/IntentUtilities;
.super Ljava/lang/Object;
.source "IntentUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #p0=(Reference);
    return-void
.end method

.method public static createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "path"

    .prologue
    .line 47
    new-instance v0, Landroid/net/Uri$Builder;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 48
    .local v0, b:Landroid/net/Uri$Builder;
    #v0=(Reference);
    const-string v1, "content"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    const-string v1, "ui.email.android.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    return-object v0
.end method

.method public static getAccountIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 104
    const-string v0, "ACCOUNT_ID"

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public static getAccountNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 111
    const-string v0, "ACCOUNT_NAME"

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getStringFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J
    .locals 5
    .parameter "intent"
    .parameter "paramName"

    .prologue
    .line 141
    const-wide/16 v0, -0x1

    .line 142
    .local v0, value:J
    #v0=(LongLo);v1=(LongHi);
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v3, -0x1

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v2, p1, v3, v4}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongParamFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    :cond_0
    #v3=(Conflicted);v4=(Conflicted);
    return-wide v0
.end method

.method private static getLongParamFromUri(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 2
    .parameter "uri"
    .parameter "paramName"
    .parameter "defaultValue"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, value:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 160
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 165
    .end local p2
    :cond_0
    :goto_0
    #v1=(Conflicted);
    return-wide p2

    .line 161
    .restart local p2
    :catch_0
    #v1=(Boolean);
    move-exception v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public static getMailboxIdFromIntent(Landroid/content/Intent;)J
    .locals 2
    .parameter "intent"

    .prologue
    .line 118
    const-string v0, "MAILBOX_ID"

    #v0=(Reference);
    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getLongFromIntent(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method private static getStringFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "intent"
    .parameter "paramName"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, value:Ljava/lang/String;
    #v0=(Null);
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, p1, v2}, Lcom/android/emailcommon/utility/IntentUtilities;->getStringParamFromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    #v0=(Reference);v2=(Conflicted);
    return-object v0
.end method

.method private static getStringParamFromUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "paramName"
    .parameter "defaultValue"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, value:Ljava/lang/String;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 173
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static setAccountId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .parameter "b"
    .parameter "accountId"

    .prologue
    .line 58
    const-wide/16 v0, -0x1

    #v0=(LongLo);v1=(LongHi);
    cmp-long v0, p1, v0

    #v0=(Byte);
    if-eqz v0, :cond_0

    .line 59
    const-string v0, "ACCOUNT_ID"

    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method
