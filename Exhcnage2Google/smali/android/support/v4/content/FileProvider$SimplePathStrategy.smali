.class Landroid/support/v4/content/FileProvider$SimplePathStrategy;
.super Ljava/lang/Object;
.source "FileProvider.java"

# interfaces
.implements Landroid/support/v4/content/FileProvider$PathStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePathStrategy"
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "authority"

    .prologue
    .line 634
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 632
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    .line 635
    iput-object p1, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    .line 636
    return-void
.end method


# virtual methods
.method public addRoot(Ljava/lang/String;Ljava/io/File;)V
    .locals 4
    .parameter "name"
    .parameter "root"

    .prologue
    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    const-string v2, "Name must not be empty"

    #v2=(Reference);
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v1=(Reference);
    throw v1

    .line 649
    :cond_0
    :try_start_0
    #v1=(Boolean);v2=(Uninit);
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 655
    iget-object v1, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    return-void

    .line 650
    :catch_0
    #v1=(Boolean);
    move-exception v0

    .line 651
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #v1=(UninitRef);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Failed to resolve canonical path for "

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #v1=(Reference);
    throw v1
.end method

.method public getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 698
    #v7=(One);
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, path:Ljava/lang/String;
    #v2=(Reference);
    const/16 v6, 0x2f

    #v6=(PosByte);
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 701
    .local v4, splitIndex:I
    #v4=(Integer);
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, tag:Ljava/lang/String;
    #v5=(Reference);
    add-int/lit8 v6, v4, 0x1

    #v6=(Integer);
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    iget-object v6, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Ljava/io/File;

    .line 705
    .local v3, root:Ljava/io/File;
    if-nez v3, :cond_0

    .line 706
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #v6=(UninitRef);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Unable to find configured root for "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 709
    :cond_0
    #v7=(One);v8=(Uninit);
    new-instance v1, Ljava/io/File;

    #v1=(UninitRef);
    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 711
    .local v1, file:Ljava/io/File;
    :try_start_0
    #v1=(Reference);
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    #v6=(Boolean);
    if-nez v6, :cond_1

    .line 717
    new-instance v6, Ljava/lang/SecurityException;

    #v6=(UninitRef);
    const-string v7, "Resolved path jumped beyond configured root"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 712
    :catch_0
    #v7=(One);
    move-exception v0

    .line 713
    .local v0, e:Ljava/io/IOException;
    #v0=(Reference);
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #v6=(UninitRef);
    new-instance v7, Ljava/lang/StringBuilder;

    #v7=(UninitRef);
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #v7=(Reference);
    const-string v8, "Failed to resolve canonical path for "

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v6=(Reference);
    throw v6

    .line 720
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    #v0=(Uninit);v6=(Boolean);v8=(Uninit);
    return-object v1
.end method
