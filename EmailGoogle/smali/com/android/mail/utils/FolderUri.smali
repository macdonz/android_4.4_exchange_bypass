.class public Lcom/android/mail/utils/FolderUri;
.super Ljava/lang/Object;
.source "FolderUri.java"


# static fields
.field public static final EMPTY:Lcom/android/mail/utils/FolderUri;


# instance fields
.field public final fullUri:Landroid/net/Uri;

.field private mComparisonUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/mail/utils/FolderUri;

    #v0=(UninitRef);
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/mail/utils/FolderUri;-><init>(Landroid/net/Uri;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/FolderUri;->EMPTY:Lcom/android/mail/utils/FolderUri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput-object v0, p0, Lcom/android/mail/utils/FolderUri;->mComparisonUri:Landroid/net/Uri;

    .line 39
    iput-object p1, p0, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    .line 40
    return-void
.end method

.method private static buildComparisonUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "fullUri"

    .prologue
    .line 43
    new-instance v0, Landroid/net/Uri$Builder;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 44
    .local v0, builder:Landroid/net/Uri$Builder;
    #v0=(Reference);
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 66
    instance-of v0, p1, Lcom/android/mail/utils/FolderUri;

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    check-cast p1, Lcom/android/mail/utils/FolderUri;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .restart local p1
    :cond_0
    #v1=(Uninit);
    invoke-virtual {p0}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method public getComparisonUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/utils/FolderUri;->mComparisonUri:Landroid/net/Uri;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/FolderUri;->buildComparisonUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/utils/FolderUri;->mComparisonUri:Landroid/net/Uri;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/mail/utils/FolderUri;->mComparisonUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/mail/utils/FolderUri;->getComparisonUri()Landroid/net/Uri;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
