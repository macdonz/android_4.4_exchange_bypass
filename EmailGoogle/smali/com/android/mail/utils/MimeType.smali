.class public Lcom/android/mail/utils/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"


# static fields
.field private static final EML_ATTACHMENT_CONTENT_TYPES:Ljava/util/Set; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final GENERIC_MIMETYPE:Ljava/lang/String; = "application/octet-stream"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    .line 44
    const-string v0, "message/rfc822"

    const-string v1, "application/eml"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/MimeType;->EML_ATTACHMENT_CONTENT_TYPES:Ljava/util/Set;

    .line 48
    const-string v0, "application/zip"

    const-string v1, "application/x-gzip"

    const-string v2, "application/x-bzip2"

    #v2=(Reference);
    const-string v3, "application/x-compress"

    #v3=(Reference);
    const-string v4, "application/x-compressed"

    #v4=(Reference);
    const-string v5, "application/x-tar"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/String;

    #v6=(Reference);
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, extension:Ljava/lang/String;
    #v0=(Null);
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 123
    const/16 v2, 0x2e

    #v2=(PosByte);
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 124
    .local v1, lastDot:I
    #v1=(Integer);
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 125
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v1           #lastDot:I
    :cond_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"
    .parameter "mimeType"

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/mail/utils/MimeType;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, extension:Ljava/lang/String;
    #v0=(Reference);
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    .line 163
    .end local p1
    :cond_0
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object p1

    .line 148
    .restart local p1
    :cond_1
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const-string v4, "text/plain"

    #v4=(Reference);
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 149
    .local v2, isTextPlain:Z
    #v2=(Boolean);
    if-nez v2, :cond_2

    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_5

    :cond_2
    #v4=(Conflicted);
    const/4 v1, 0x1

    .line 152
    .local v1, isGenericType:Z
    :goto_1
    #v1=(Boolean);
    const/4 v3, 0x0

    .line 153
    .local v3, type:Ljava/lang/String;
    #v3=(Null);
    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_4

    .line 154
    :cond_3
    #v4=(Conflicted);
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    :cond_4
    #v3=(Reference);v4=(Conflicted);
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_6

    move-object p1, v3

    .line 157
    goto :goto_0

    .line 149
    .end local v1           #isGenericType:Z
    .end local v3           #type:Ljava/lang/String;
    :cond_5
    #v1=(Uninit);v3=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_1

    .line 158
    .restart local v1       #isGenericType:Z
    .restart local v3       #type:Ljava/lang/String;
    :cond_6
    #v1=(Boolean);v3=(Reference);
    const-string v4, "eml"

    #v4=(Reference);
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_7

    .line 160
    const-string p1, "message/rfc822"

    goto :goto_0

    .line 163
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "application/octet-stream"

    goto :goto_0
.end method

.method public static isBlocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentType"

    .prologue
    .line 112
    sget-object v0, Lcom/android/mail/utils/MimeType;->UNACCEPTABLE_ATTACHMENT_TYPES:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isEmlMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 175
    sget-object v0, Lcom/android/mail/utils/MimeType;->EML_ATTACHMENT_CONTENT_TYPES:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isInstallable(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 56
    const-string v0, "application/vnd.android.package-archive"

    #v0=(Reference);
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public static isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "contentUri"
    .parameter "contentType"

    .prologue
    const/4 v10, 0x2

    #v10=(PosByte);
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 67
    #v5=(Null);
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    #v6=(Integer);
    if-eqz v6, :cond_0

    const-string v6, "null"

    #v6=(Reference);
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_1

    .line 69
    :cond_0
    #v6=(Conflicted);
    sget-object v6, Lcom/android/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Attachment with null content type. \'%s"

    #v7=(Reference);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    aput-object p1, v4, v5

    invoke-static {v6, v7, v4}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Boolean);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    return v5

    .line 73
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(One);v5=(Null);v6=(Boolean);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(PosByte);
    invoke-static {p2}, Lcom/android/mail/utils/MimeType;->isBlocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 74
    sget-object v6, Lcom/android/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "content type \'%s\' is blocked. \'%s"

    #v7=(Reference);
    new-array v8, v10, [Ljava/lang/Object;

    #v8=(Reference);
    aput-object p2, v8, v5

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 78
    :cond_2
    #v6=(Boolean);v7=(Uninit);v8=(Uninit);
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef);
    const-string v6, "android.intent.action.VIEW"

    #v6=(Reference);
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, mimetypeIntent:Landroid/content/Intent;
    #v3=(Reference);
    const v6, 0x80001

    #v6=(Integer);
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    if-eqz p1, :cond_4

    .line 83
    invoke-static {v3, p1, p2}, Lcom/android/mail/utils/Utils;->setIntentDataAndTypeAndNormalize(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    .local v2, manager:Landroid/content/pm/PackageManager;
    #v2=(Reference);
    const/high16 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 101
    sget-object v6, Lcom/android/mail/utils/MimeType;->LOG_TAG:Ljava/lang/String;

    #v6=(Reference);
    const-string v7, "Unable to find supporting activity. mime-type: %s, uri: %s, normalized mime-type: %s normalized uri: %s"

    #v7=(Reference);
    const/4 v8, 0x4

    #v8=(PosByte);
    new-array v8, v8, [Ljava/lang/Object;

    #v8=(Reference);
    aput-object p2, v8, v5

    aput-object p1, v8, v4

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    #v9=(Reference);
    aput-object v9, v8, v10

    const/4 v9, 0x3

    #v9=(PosByte);
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    #v10=(Reference);
    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/mail/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    :cond_3
    #v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    #v6=(Integer);
    if-lez v6, :cond_5

    :goto_2
    #v4=(Boolean);
    move v5, v4

    #v5=(Boolean);
    goto :goto_0

    .line 85
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :cond_4
    #v1=(Uninit);v2=(Uninit);v4=(One);v5=(Null);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(PosByte);
    invoke-static {v3, p2}, Lcom/android/mail/utils/Utils;->setIntentTypeAndNormalize(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    #v0=(Reference);
    goto :goto_0

    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #manager:Landroid/content/pm/PackageManager;
    :cond_5
    #v0=(Uninit);v1=(Reference);v2=(Reference);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move v4, v5

    .line 105
    #v4=(Null);
    goto :goto_2
.end method
