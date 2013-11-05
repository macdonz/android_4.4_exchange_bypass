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

.method public static setAccountName(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .locals 1
    .parameter "b"
    .parameter "accountName"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    const-string v0, "ACCOUNT_NAME"

    #v0=(Reference);
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
