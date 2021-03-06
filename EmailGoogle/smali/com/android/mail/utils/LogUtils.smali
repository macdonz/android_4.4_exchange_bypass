.class public Lcom/android/mail/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

.field public static final TAG:Ljava/lang/String;

.field private static sDebugLoggingEnabledForTests:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/LogUtils;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/mail/utils/LogUtils;->sDebugLoggingEnabledForTests:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static buildPreventsDebugLogging()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-static {v0, p0}, Lcom/android/mail/utils/LogUtils;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 410
    and-int/lit16 p1, p1, 0xff

    .line 411
    const-string v0, "0123456789ABCDEF"

    #v0=(Reference);
    shr-int/lit8 v1, p1, 0x4

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    #v0=(Char);
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "0123456789ABCDEF"

    #v0=(Reference);
    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    #v0=(Char);
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    return-object p0
.end method

.method public static cleanUpMimeDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 397
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 401
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-object p0

    .line 400
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    sget-object v0, Lcom/android/mail/utils/LogUtils;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 401
    goto :goto_0
.end method

.method public static contentUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 109
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {v0, p0}, Lcom/android/mail/utils/LogUtils;->contentUriToString(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static contentUriToString(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "tag"
    .parameter "uri"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/mail/utils/LogUtils;->isDebugLoggingEnabled(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);
    return-object v4

    .line 122
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 124
    .local v3, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #v3=(Reference);
    new-instance v4, Landroid/net/Uri$Builder;

    #v4=(UninitRef);
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    #v4=(Reference);
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 131
    .local v1, builder:Landroid/net/Uri$Builder;
    #v1=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mail/utils/LogUtils;->sanitizeAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 134
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    #v2=(Integer);
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    #v4=(Integer);
    if-ge v2, v4, :cond_1

    .line 135
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_1
    #v4=(Integer);
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 221
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 222
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 224
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 239
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 240
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 242
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 326
    const/4 v0, 0x6

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 327
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 329
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 344
    const/4 v0, 0x6

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 345
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 347
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 256
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 257
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 259
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 274
    const/4 v0, 0x4

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 275
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 277
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method protected static isDebugLoggingEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x3

    #v2=(PosByte);
    const/4 v0, 0x0

    .line 95
    #v0=(Null);
    invoke-static {}, Lcom/android/mail/utils/LogUtils;->buildPreventsDebugLogging()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .line 98
    :cond_1
    #v0=(Null);v1=(Boolean);
    sget-object v1, Lcom/android/mail/utils/LogUtils;->sDebugLoggingEnabledForTests:Ljava/lang/Boolean;

    #v1=(Reference);
    if-eqz v1, :cond_2

    .line 99
    sget-object v0, Lcom/android/mail/utils/LogUtils;->sDebugLoggingEnabledForTests:Ljava/lang/Boolean;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0

    .line 101
    :cond_2
    #v0=(Null);
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_3

    sget-object v1, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 2
    .parameter "tag"
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    .line 169
    #v0=(Null);
    const/4 v1, 0x3

    #v1=(PosByte);
    if-le v1, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Null);
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_2

    sget-object v1, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method public static sanitizeAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "accountName"

    .prologue
    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 147
    const-string v0, ""

    .line 150
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Boolean);v1=(Uninit);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "account:"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/mail/utils/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tag"
    .parameter "name"

    .prologue
    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 155
    const-string p1, ""

    .line 162
    .end local p1
    :cond_0
    :goto_0
    #v0=(Integer);
    return-object p1

    .line 158
    .restart local p1
    :cond_1
    #v0=(Boolean);
    invoke-static {p0}, Lcom/android/mail/utils/LogUtils;->isDebugLoggingEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setDebugLoggingEnabledForTests(Z)V
    .locals 0
    .parameter "enabled"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/mail/utils/LogUtils;->setDebugLoggingEnabledForTestsInternal(Z)V

    .line 77
    return-void
.end method

.method protected static setDebugLoggingEnabledForTestsInternal(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/LogUtils;->sDebugLoggingEnabledForTests:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 186
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 187
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 189
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 204
    const/4 v0, 0x2

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 205
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 207
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 291
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 294
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 309
    const/4 v0, 0x5

    #v0=(PosByte);
    invoke-static {p0, v0}, Lcom/android/mail/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 310
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 312
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 2
    .parameter "tag"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 365
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    new-instance v1, Ljava/lang/Error;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    #v1=(Reference);
    invoke-static {p0, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"
    .parameter "tr"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 384
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {p0, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
